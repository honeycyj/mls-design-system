const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const sourcePath = path.join(root, "tokens/raw/figma-variables.json");
const buildRoot = path.join(root, "tokens/build");
const source = JSON.parse(fs.readFileSync(sourcePath, "utf8"));

function ensureDir(dir) {
  fs.mkdirSync(dir, { recursive: true });
}

function writeFile(relativePath, content) {
  const target = path.join(root, relativePath);
  ensureDir(path.dirname(target));
  fs.writeFileSync(target, `${content.trim()}\n`);
}

function toKebab(parts) {
  return parts.join("-").replace(/_/g, "-").replace(/[^a-zA-Z0-9-]/g, "-").toLowerCase();
}

function toCamel(parts) {
  return parts
    .join(" ")
    .replace(/[_/-]+/g, " ")
    .trim()
    .split(/\s+/)
    .map((part, index) => {
      const lower = part.toLowerCase();
      return index === 0 ? lower : lower.charAt(0).toUpperCase() + lower.slice(1);
    })
    .join("");
}

function toSnake(parts) {
  return parts.join("_").replace(/[^a-zA-Z0-9_]/g, "_").toLowerCase();
}

function walk(value, parts = [], visit) {
  if (value && typeof value === "object" && !Array.isArray(value)) {
    const keys = Object.keys(value);
    const isModeValue = source.modes.every((mode) => keys.includes(mode));
    const isShadowValue = ["x", "y", "blur", "spread", "color"].every((key) => keys.includes(key));
    if (isModeValue || isShadowValue) {
      visit(parts, value);
      return;
    }
    for (const key of keys) {
      walk(value[key], [...parts, key], visit);
    }
    return;
  }
  visit(parts, value);
}

function collectTokens() {
  const tokens = [];
  for (const [category, group] of Object.entries(source.tokens)) {
    walk(group, [category], (parts, value) => {
      tokens.push({
        category,
        path: parts,
        cssName: `--mls-${toKebab(parts)}`,
        jsName: toCamel(parts),
        androidName: `mls_${toSnake(parts)}`,
        swiftName: toCamel(parts),
        value
      });
    });
  }
  return tokens;
}

function modeValue(token, mode) {
  if (token.value && typeof token.value === "object" && source.modes.every((m) => Object.keys(token.value).includes(m))) {
    return token.value[mode];
  }
  return token.value;
}

function cssShadow(value) {
  return `${value.x}px ${value.y}px ${value.blur}px ${value.spread}px ${value.color}`;
}

function cssValue(token, mode) {
  const value = modeValue(token, mode);
  if (token.category === "shadow") return cssShadow(value);
  return String(value);
}

function buildCss(tokens) {
  const light = tokens.map((token) => `  ${token.cssName}: ${cssValue(token, "light")};`).join("\n");
  const dark = tokens.map((token) => `  ${token.cssName}: ${cssValue(token, "dark")};`).join("\n");
  return `:root {\n${light}\n}\n\n[data-theme="dark"] {\n${dark}\n}`;
}

function buildTs(tokens) {
  const lines = tokens.map((token) => {
    const value = token.value && typeof token.value === "object" && source.modes.every((m) => Object.keys(token.value).includes(m))
      ? token.value
      : { value: token.value };
    return `  ${JSON.stringify(token.jsName)}: ${JSON.stringify(value)}`;
  });
  return `export const tokens = {\n${lines.join(",\n")}\n} as const;\n\nexport type MLSTokenName = keyof typeof tokens;`;
}

function buildTailwind(tokens) {
  const colors = {};
  const spacing = {};
  const borderRadius = {};
  const fontSize = {};
  for (const token of tokens) {
    if (token.category === "color") colors[token.jsName] = `var(${token.cssName})`;
    if (token.path[1] === "spacing") spacing[token.path[2]] = `var(${token.cssName})`;
    if (token.path[1] === "radius") borderRadius[token.path[2]] = `var(${token.cssName})`;
    if (token.path[1] === "fontSize") fontSize[token.path[2]] = `var(${token.cssName})`;
  }
  return `module.exports = ${JSON.stringify({ theme: { extend: { colors, spacing, borderRadius, fontSize } } }, null, 2)};`;
}

function swiftColor(value) {
  return `Color(mlsToken: ${JSON.stringify(value)})`;
}

function buildSwift(tokens) {
  const colorLines = tokens
    .filter((token) => token.category === "color")
    .map((token) => `  public static let ${token.swiftName} = MLSColorToken(light: ${swiftColor(modeValue(token, "light"))}, dark: ${swiftColor(modeValue(token, "dark"))})`);
  const numberLines = tokens
    .filter((token) => token.category === "dimension" || token.category === "number")
    .map((token) => `  public static let ${token.swiftName}: CGFloat = ${JSON.stringify(String(modeValue(token, "light"))).replace(/"([0-9.]+)px"/, "$1").replace(/"([0-9.]+)"/, "$1")}`);
  return `import SwiftUI

public struct MLSColorToken {
  public let light: Color
  public let dark: Color
}

public enum MLSColors {
${colorLines.join("\n")}
}

public enum MLSMetrics {
${numberLines.join("\n")}
}

private extension Color {
  init(mlsToken value: String) {
    let rgba = MLSColorParser.parse(value)
    self.init(.sRGB, red: rgba.red, green: rgba.green, blue: rgba.blue, opacity: rgba.alpha)
  }
}

private enum MLSColorParser {
  static func parse(_ value: String) -> (red: Double, green: Double, blue: Double, alpha: Double) {
    if value.hasPrefix("#") {
      let hex = String(value.dropFirst())
      let scanner = Scanner(string: hex)
      var raw: UInt64 = 0
      scanner.scanHexInt64(&raw)

      switch hex.count {
      case 6:
        return (
          Double((raw >> 16) & 0xff) / 255,
          Double((raw >> 8) & 0xff) / 255,
          Double(raw & 0xff) / 255,
          1
        )
      case 8:
        return (
          Double((raw >> 16) & 0xff) / 255,
          Double((raw >> 8) & 0xff) / 255,
          Double(raw & 0xff) / 255,
          Double((raw >> 24) & 0xff) / 255
        )
      default:
        return (0, 0, 0, 1)
      }
    }

    let pattern = #"rgba\\((\\d+),\\s*(\\d+),\\s*(\\d+),\\s*([0-9.]+)\\)"#
    guard
      let regex = try? NSRegularExpression(pattern: pattern),
      let match = regex.firstMatch(in: value, range: NSRange(value.startIndex..., in: value)),
      let redRange = Range(match.range(at: 1), in: value),
      let greenRange = Range(match.range(at: 2), in: value),
      let blueRange = Range(match.range(at: 3), in: value),
      let alphaRange = Range(match.range(at: 4), in: value)
    else {
      return (0, 0, 0, 1)
    }

    return (
      Double(value[redRange])! / 255,
      Double(value[greenRange])! / 255,
      Double(value[blueRange])! / 255,
      Double(value[alphaRange])!
    )
  }
}`;
}

function androidColor(value) {
  if (String(value).startsWith("#")) return value;
  const match = String(value).match(/rgba\((\d+),\s*(\d+),\s*(\d+),\s*([0-9.]+)\)/);
  if (!match) return "#000000";
  const [, r, g, b, a] = match;
  const alpha = Math.round(Number(a) * 255).toString(16).padStart(2, "0");
  return `#${alpha}${Number(r).toString(16).padStart(2, "0")}${Number(g).toString(16).padStart(2, "0")}${Number(b).toString(16).padStart(2, "0")}`.toUpperCase();
}

function buildAndroidColors(tokens, mode) {
  const lines = tokens
    .filter((token) => token.category === "color")
    .map((token) => `  <color name="${token.androidName}">${androidColor(modeValue(token, mode))}</color>`);
  return `<resources>\n${lines.join("\n")}\n</resources>`;
}

function buildAndroidDimens(tokens) {
  const lines = tokens
    .filter((token) => token.category === "dimension")
    .map((token) => `  <dimen name="${token.androidName}">${modeValue(token, "light")}</dimen>`);
  return `<resources>\n${lines.join("\n")}\n</resources>`;
}

ensureDir(buildRoot);
const tokens = collectTokens();

writeFile("tokens/build/web/tokens.css", buildCss(tokens));
writeFile("tokens/build/web/tokens.ts", buildTs(tokens));
writeFile("tokens/build/web/tailwind.tokens.js", buildTailwind(tokens));
writeFile("tokens/build/ios/MLSDesignTokens.swift", buildSwift(tokens));
writeFile("tokens/build/android/values/colors.xml", buildAndroidColors(tokens, "light"));
writeFile("tokens/build/android/values-night/colors.xml", buildAndroidColors(tokens, "dark"));
writeFile("tokens/build/android/values/dimens.xml", buildAndroidDimens(tokens));

console.log(`Built ${tokens.length} tokens for Web, iOS, and Android.`);
