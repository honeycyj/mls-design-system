import SwiftUI

public struct MLSColorToken {
  public let light: Color
  public let dark: Color
}

public enum MLSColors {
  public static let colorTextPrimary = MLSColorToken(light: Color(mlsToken: "#111111"), dark: Color(mlsToken: "#ffffff"))
  public static let colorTextSecondary = MLSColorToken(light: Color(mlsToken: "#666666"), dark: Color(mlsToken: "#b3b3b3"))
  public static let colorTextDisabled = MLSColorToken(light: Color(mlsToken: "#999999"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorIconPrimary = MLSColorToken(light: Color(mlsToken: "#111111"), dark: Color(mlsToken: "#ffffff"))
  public static let colorIconDisabled = MLSColorToken(light: Color(mlsToken: "#999999"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorBgSurface = MLSColorToken(light: Color(mlsToken: "#ffffff"), dark: Color(mlsToken: "#0a0a0a"))
  public static let colorBgActive = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.06)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.1)"))
  public static let colorStrokeDefault = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.12)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.16)"))
}

public enum MLSMetrics {
  public static let dimensionStroke1: CGFloat = 1
  public static let dimensionStroke05: CGFloat = 0.5
  public static let dimensionRadiusSm: CGFloat = 4
  public static let dimensionRadiusMd: CGFloat = 8
  public static let dimensionSpacing2: CGFloat = 2
  public static let dimensionSpacing4: CGFloat = 4
  public static let dimensionSpacing8: CGFloat = 8
  public static let dimensionSpacing12: CGFloat = 12
  public static let dimensionSpacing16: CGFloat = 16
  public static let dimensionFontsizeBody: CGFloat = 13
  public static let dimensionFontsizeTitle: CGFloat = 18
  public static let dimensionLineheightBody: CGFloat = 20
  public static let dimensionLineheightTitle: CGFloat = 24
  public static let numberFontweightRegular: CGFloat = 400
  public static let numberFontweightMedium: CGFloat = 500
  public static let numberFontweightSemibold: CGFloat = 600
  public static let numberOpacityDisabled: CGFloat = 0.2
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

    let pattern = #"rgba\((\d+),\s*(\d+),\s*(\d+),\s*([0-9.]+)\)"#
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
}
