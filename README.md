# MLS Design System

这是 MLS Designsystem 的跨端设计 Token 仓库，用来把 Figma 变量同步到开发工程。

English version is included below: [English](#english)

当前覆盖平台：

- Web
- iOS
- Android

## 仓库作用

这个仓库不直接维护业务 UI，而是维护设计系统的代码产物：

```text
Figma 变量
  -> tokens/raw/figma-variables.json
  -> Web / iOS / Android 代码产物
```

后续每次同步时，应以 Figma 变量为源头，生成并提交所有平台文件。

## 目录结构

```text
tokens/
  raw/
    figma-variables.json
  build/
    web/
      tokens.css
      tokens.ts
      tailwind.tokens.js
    ios/
      MLSDesignTokens.swift
    android/
      values/
        colors.xml
        dimens.xml
      values-night/
        colors.xml
scripts/
  build-tokens.js
.github/
  workflows/
    check-tokens.yml
```

## 命名规则

必须保留 Figma 里的变量命名，不要为了代码侧观感改名。

例如 Figma 中的变量：

```text
text/text-primary
icon/icon-disabled
bg/bg/bg-active
border/border-default
```

在不同平台中只做必要格式转换：

```text
CSS      --mls-color-text-text-primary
Android  mls_color_text_text_primary
Swift    colorTextTextPrimary
```

## 构建命令

```bash
npm run build:tokens
```

构建会根据 `tokens/raw/figma-variables.json` 生成 Web、iOS、Android 三端产物。

## 检查命令

```bash
npm run check:tokens
```

这个命令会重新生成 token，并检查生成文件是否已经提交。

## 同步流程

推荐流程：

1. 从 Figma 读取最新变量。
2. 更新 `tokens/raw/figma-variables.json`。
3. 执行 `npm run build:tokens`。
4. 检查生成的 Web / iOS / Android 文件。
5. 提交并推送到 GitHub。

## Web 使用

引入 CSS 变量：

```css
@import "@mls/design-tokens/tokens/build/web/tokens.css";
```

示例：

```css
.button {
  color: var(--mls-color-text-text-primary);
  background: var(--mls-color-bg-bg-bg-default);
}
```

暗色模式使用：

```html
<html data-theme="dark">
```

## iOS 使用

iOS 产物位于：

```text
tokens/build/ios/MLSDesignTokens.swift
```

示例：

```swift
let color = MLSColors.colorTextTextPrimary.light
```

## Android 使用

Android 产物位于：

```text
tokens/build/android/values/colors.xml
tokens/build/android/values-night/colors.xml
tokens/build/android/values/dimens.xml
```

示例：

```xml
@color/mls_color_text_text_primary
@dimen/mls_dimension_space_16
```

## 注意事项

- 不要手动修改 `tokens/build` 里的文件。
- 不要改 Figma 变量名对应的 token 路径。
- 如果 Figma 变量名需要调整，应先在 Figma 中调整，再同步到仓库。
- 每次同步必须同时提交 raw source 和 build outputs。

---

## English

This is the cross-platform design token repository for MLS Designsystem. It connects Figma variables to product code.

Supported platforms:

- Web
- iOS
- Android

## Purpose

This repository does not maintain product UI directly. It maintains generated design-system code artifacts:

```text
Figma variables
  -> tokens/raw/figma-variables.json
  -> Web / iOS / Android outputs
```

Every sync should use Figma variables as the source of truth and commit generated files for all platforms together.

## Structure

```text
tokens/
  raw/
    figma-variables.json
  build/
    web/
      tokens.css
      tokens.ts
      tailwind.tokens.js
    ios/
      MLSDesignTokens.swift
    android/
      values/
        colors.xml
        dimens.xml
      values-night/
        colors.xml
scripts/
  build-tokens.js
.github/
  workflows/
    check-tokens.yml
```

## Naming

Figma variable names must be preserved. Do not rename tokens for code-side aesthetics.

Examples from Figma:

```text
text/text-primary
icon/icon-disabled
bg/bg/bg-active
border/border-default
```

Platform outputs only apply the required format conversion:

```text
CSS      --mls-color-text-text-primary
Android  mls_color_text_text_primary
Swift    colorTextTextPrimary
```

## Build

```bash
npm run build:tokens
```

This generates Web, iOS, and Android outputs from `tokens/raw/figma-variables.json`.

## Check

```bash
npm run check:tokens
```

This regenerates tokens and checks whether generated files are committed.

## Sync Workflow

Recommended workflow:

1. Read the latest variables from Figma.
2. Update `tokens/raw/figma-variables.json`.
3. Run `npm run build:tokens`.
4. Review the generated Web / iOS / Android files.
5. Commit and push to GitHub.

## Web Usage

Import CSS variables:

```css
@import "@mls/design-tokens/tokens/build/web/tokens.css";
```

Example:

```css
.button {
  color: var(--mls-color-text-text-primary);
  background: var(--mls-color-bg-bg-bg-default);
}
```

Dark mode:

```html
<html data-theme="dark">
```

## iOS Usage

iOS output:

```text
tokens/build/ios/MLSDesignTokens.swift
```

Example:

```swift
let color = MLSColors.colorTextTextPrimary.light
```

## Android Usage

Android outputs:

```text
tokens/build/android/values/colors.xml
tokens/build/android/values-night/colors.xml
tokens/build/android/values/dimens.xml
```

Example:

```xml
@color/mls_color_text_text_primary
@dimen/mls_dimension_space_16
```

## Notes

- Do not manually edit files under `tokens/build`.
- Do not change token paths derived from Figma variable names.
- If a variable name must change, change it in Figma first, then sync it into this repository.
- Every sync must commit both the raw source and generated outputs.

