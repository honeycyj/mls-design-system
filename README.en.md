# MLS Design System

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

