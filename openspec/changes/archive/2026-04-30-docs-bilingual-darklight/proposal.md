## Why

The docs site (`docs/index.html`) is English-only and dark-theme-only. The landing page already supports bilingual VI/EN and dark/light mode via shared localStorage keys (`spec-ade-locale`, `spec-ade-theme`). The docs site needs to match — users switching language or theme on the landing page should see the same preference carry over to docs.

## What Changes

- Add bilingual support to docs renderer: folder-based locale routing (`docs/*.mdx` = EN default, `docs/vi/*.mdx` = Vietnamese translations)
- Add dark/light mode to docs renderer: CSS variable swap with `:root[data-theme="light"]`, blocking theme script, shared `spec-ade-theme` localStorage key
- Add VI|EN toggle and sun/moon theme toggle to docs topbar
- Create Vietnamese translations of all 22 MDX doc files in `docs/vi/` folder structure
- Create docs UI locale strings (sidebar titles, search placeholder, nav labels, footer) in JSON
- Create separate search indexes per locale: `search-index-en.json` + `search-index-vi.json`
- Add fallback behavior: when VI translation missing → show EN content + bilingual banner "This page is not yet available in Vietnamese"
- Replace GitHub link in docs topbar with Discord + "Back to home" link
- Add `docs/locales/vi.json` and `docs/locales/en.json` for docs UI chrome strings

## Capabilities

### New Capabilities
- `docs-bilingual`: Folder-based locale routing, VI|EN toggle, locale detection from shared localStorage, fallback banner for untranslated pages, docs UI chrome i18n
- `docs-theme-switching`: Dark/light mode for docs renderer with CSS variable swap, blocking script, sun/moon toggle, shared localStorage key
- `docs-content-vi`: Vietnamese translations of all 22 MDX documentation files
- `docs-content-update`: Replace GitHub link with Discord, add "Back to home" link, update footer

### Modified Capabilities

_None._

## Impact

- `docs/index.html` — Major rewrite: add i18n system, theme system, locale-aware MDX loading, new topbar controls, light mode CSS
- `docs/vi/` — New directory: 22 translated MDX files mirroring EN structure
- `docs/locales/vi.json`, `docs/locales/en.json` — New: docs UI chrome strings
- `docs/search-index-vi.json` — New: Vietnamese search index
- `docs/search-index.json` → renamed to `docs/search-index-en.json` for consistency
- No changes to landing page files. No backend changes.
