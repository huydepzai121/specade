## Context

The docs site (`docs/index.html`) is a React 18 + Babel standalone SPA (~488 lines) that renders MDX files client-side using `marked.js` and `Prism.js`. It has a hash router (`#/slug`), sidebar navigation, search modal (⌘K), and MDX preprocessing for callouts and card grids. Currently English-only and dark-theme-only.

The landing page (`index.html`) already implements bilingual VI/EN and dark/light mode using:
- `spec-ade-locale` localStorage key (values: `vi` or `en`)
- `spec-ade-theme` localStorage key (values: `light` or `dark`)
- Blocking `<script>` in `<head>` for flash prevention
- CSS variables with `:root[data-theme="light"]` overrides

Current docs file structure:
```
docs/
├── index.html              ← Docs renderer
├── index.mdx               ← Landing page (EN)
├── search-index.json       ← Search data (EN)
├── getting-started/*.mdx   ← 3 files
├── core-concepts/*.mdx     ← 7 files
├── features/*.mdx          ← 8 files
└── guides/*.mdx            ← 4 files (22 total)
```

## Goals / Non-Goals

**Goals:**
- Bilingual docs with shared locale preference from landing page
- Dark/light mode with shared theme preference from landing page
- VI|EN toggle and sun/moon toggle in docs topbar
- Vietnamese translations of all 22 MDX files
- Locale-aware search with separate indexes
- Graceful fallback when VI translation missing
- Discord link replacing GitHub in topbar

**Non-Goals:**
- Changing the docs renderer architecture (keep React 18 + Babel standalone)
- Adding a build step or SSG
- Translating code examples inside MDX files (code stays as-is)
- RTL language support
- Changing MDX file format or frontmatter schema

## Decisions

### Decision 1: Folder-based locale routing

**Choice**: EN files stay at `docs/*.mdx` (backward compatible). VI translations go to `docs/vi/*.mdx` mirroring the same directory structure.

**Rationale**: No breaking changes to existing URLs. EN is the default/fallback. Adding a new language later (e.g., `docs/ja/`) follows the same pattern.

**Fetch logic**: When locale is `vi`, fetch `vi/${slug}.mdx` first. If 404, fall back to `${slug}.mdx` (EN) and show a "not translated" banner.

### Decision 2: Docs UI i18n via JSON locale files

**Choice**: `docs/locales/en.json` and `docs/locales/vi.json` for UI chrome strings (sidebar group titles, search placeholder, nav labels, footer text, fallback banner).

**Rationale**: Same pattern as landing page. Keeps docs renderer code clean. EN strings inlined as default (same as landing page pattern with `VI_STRINGS`).

### Decision 3: Shared localStorage keys

**Choice**: Reuse `spec-ade-locale` and `spec-ade-theme` from landing page. No separate docs-specific keys.

**Rationale**: User sets preference once, it applies everywhere. Toggling in docs updates the same key that landing page reads.

### Decision 4: Search index per locale

**Choice**: Rename `search-index.json` → `search-index-en.json`. Create `search-index-vi.json`. Load based on active locale.

**Rationale**: Search results should match the language the user is reading. Searching in Vietnamese when reading Vietnamese docs is the expected behavior.

### Decision 5: Light mode CSS approach

**Choice**: Add `:root[data-theme="light"]` overrides to the existing inline `<style>` in `docs/index.html`. Add blocking theme script before styles (same pattern as landing page).

**Rationale**: Docs styles are self-contained in the inline `<style>` block. No need to extract to external file — docs is a single page with its own design tokens.

### Decision 6: Topbar controls layout

**Choice**: `[hamburger] [logo] [spacer] [search] [VI|EN] [☀/🌙] [Discord] [← Home]`

**Rationale**: Matches landing page nav pattern (lang toggle → theme toggle → CTA). Discord replaces GitHub. "Back to home" provides navigation back to landing page.

## Risks / Trade-offs

- **22 MDX files to translate** → Large content task but straightforward. Can be done incrementally with fallback banner.
- **Search index maintenance** → Two indexes to keep in sync. Manual process since no build step.
- **Inline styles growing** → Adding light mode tokens to already-large inline `<style>` (~170 lines → ~250 lines). Acceptable for a single-page docs renderer.
