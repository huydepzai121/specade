## Context

This project (`spec_ade_html`) is a static site served by nginx via Docker. The landing page is a single `index.html` file (~670 lines) built with React 18 via Babel standalone (no build step). It uses a violet/purple dark-only theme with Geist font family and contains an interactive IDE mockup with animated chat streaming demo.

Current file structure:
- `index.html` — All CSS (~290 lines inline), React components, and content in one file
- `assets/screens/` — Product mockup images
- `docs/` — 22 MDX files with Mintlify config (separate concern, not part of this change)
- `nginx.conf` — Static file serving
- `Dockerfile` — Docker build

The landing page currently has inaccurate content: GitHub links and "Open Source" use case, despite spec-ade being a closed-source product with Ed25519 licensing.

## Goals / Non-Goals

**Goals:**
- Bilingual landing page (Vietnamese + English) with browser auto-detection and manual toggle
- Dark/light mode with OS preference detection and manual toggle
- Accurate product positioning (closed-source, community via Discord, Request Access CTA)
- Maintainable file structure (extracted CSS, locale JSON files)

**Non-Goals:**
- Docs changes (docs remain English-only, rendered separately at `/docs/`)
- Build tooling (keep React 18 + Babel standalone, no Vite/webpack)
- New sections or layout changes (keep existing section structure: Hero, Comparison, Features, Use Cases, Roadmap, CTA, Footer)
- SEO optimization or meta tag changes beyond basic lang attribute
- Mobile responsive changes (existing responsive CSS is adequate)

## Decisions

### Decision 1: i18n approach — JSON locale files with runtime toggle

**Choice**: Separate `locales/vi.json` and `locales/en.json` files loaded at runtime, with a React context provider for language state.

**Alternatives considered**:
- Two separate HTML files (`/vi/index.html`, `/en/index.html`) — doubles maintenance burden, hard to keep in sync
- Inline object in JS — clutters the already-large single file

**Rationale**: JSON files are easy to edit independently, can be loaded via fetch, and keep the HTML file focused on structure/logic. A React context provider (`LocaleContext`) makes all components reactive to language changes without prop drilling.

**Locale detection priority**: localStorage → `navigator.language` → default `vi`. If `navigator.language` starts with `en`, use `en`; all other languages fall back to `vi`.

### Decision 2: Theme switching — CSS custom properties with data attribute

**Choice**: `:root` for dark tokens (default), `:root[data-theme="light"]` for light overrides. Toggle sets `data-theme` attribute on `<html>` element.

**Alternatives considered**:
- Separate CSS files per theme — extra HTTP request, flash of unstyled content
- CSS `prefers-color-scheme` media query only — no manual override possible

**Rationale**: Single CSS file with variable overrides is the simplest approach. Setting `data-theme` on `<html>` before React renders prevents flash. Detection priority: localStorage → `prefers-color-scheme` → default dark.

### Decision 3: Extract CSS to style.css

**Choice**: Move all CSS from inline `<style>` to external `style.css`.

**Rationale**: Adding light mode tokens will roughly double the CSS variable declarations. Keeping ~400+ lines of CSS inline makes the HTML file unwieldy. External file enables browser caching and cleaner separation.

### Decision 4: Navigation controls placement

**Choice**: Add language toggle (`VI | EN`) and theme toggle (sun/moon icon) to the floating pill navigation bar, positioned after the existing nav links and before the CTA button.

**Layout**: `[logo] [Features] [Roadmap] [Docs] [VI|EN] [☀/🌙] [Request Access]`

### Decision 5: CTA and community links

**Choice**: Replace all GitHub references with Discord. Download CTA becomes "Request Access" / "Liên hệ" linking to Discord invite URL.

**Rationale**: spec-ade is closed-source with a licensing system. No public GitHub repo exists. Discord serves as the primary community channel.

## Risks / Trade-offs

- **Locale JSON loading delay** → Mitigated by inlining the default locale (VI) in the HTML and only fetching the alternate locale on toggle. First paint always works.
- **Flash of wrong theme** → Mitigated by a blocking `<script>` in `<head>` that reads localStorage and sets `data-theme` before CSS loads.
- **Increased file count** (1 file → 4 files: HTML + CSS + 2 JSON) → Acceptable trade-off for maintainability. All files are small and cacheable.
- **No build step validation** → Locale JSON typos won't be caught at build time. Mitigated by keeping locale keys simple and flat.
