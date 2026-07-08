# MLS Design Tokens

Cross-platform design token package for MLS Designsystem.

This repository is the bridge between Figma variables and product code for Web, iOS, and Android.

## Structure

```text
tokens/
  raw/figma-variables.json
  build/
    web/tokens.css
    web/tokens.ts
    web/tailwind.tokens.js
    ios/MLSDesignTokens.swift
    android/values/colors.xml
    android/values-night/colors.xml
    android/values/dimens.xml
scripts/
  build-tokens.js
```

## Workflow

1. Sync variables from Figma into `tokens/raw/figma-variables.json`.
2. Run `npm run build:tokens`.
3. Commit the raw source and generated platform files together.

## Commands

```bash
npm run build:tokens
npm run check:tokens
```

