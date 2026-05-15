## Context

This project (`spec_ade_html`) is a static site served by nginx via Docker. It currently contains:

- `index.html` — A single-page landing page built with React 18 (Babel standalone, no build step). Uses a violet/purple dark theme with Geist font family. Contains an interactive IDE mockup (~500 lines of React code) and Vietnamese content.
- `docs/` — 22 MDX files organized into 4 groups (getting-started, core-concepts, features, guides) with a Mintlify `docs.json` config. A basic `docs/index.html` exists but is a simple static page, not a full docs renderer.
- `docs/docs.json` — Mintlify configuration with 4-tab navigation structure.
- `package.json` — Contains `mint` devDependency for Mintlify CLI.
- `nginx.conf` — Basic static file serving.

The Mintlify setup requires their managed deployment service (GitHub App push-to-deploy) which adds an external dependency. The landing page content is in Vietnamese, limiting international reach. The layout doesn't follow modern dev-tool landing page patterns.

Reference sites studied via Playwright:
- **Augment docs** (docs.augmentcode.com): Mintlify-powered, flat sidebar with grouped sections, search (⌘K), "Ask AI" button, card-based intro page, dark/light toggle
- **Lumide landing** (lumide.dev): Centered hero with stats, comparison section (Browser Bloat vs Native), feature deep-dives with screenshots, 6-card feature grid, roadmap timeline, minimal footer

## Goals / Non-Goals

**Goals:**
- Self-hosted docs site with zero external service dependencies
- Docs UI matching Augment's quality: flat sidebar, search, responsive, dark theme
- Landing page restructured to Lumide pattern: centered hero, comparison, feature grid, roadmap
- All content in English for international audience
- Preserve existing violet color palette and design tokens
- Keep interactive mockup accessible via lightbox
- No build step required — everything works as static HTML served by nginx

**Non-Goals:**
- Server-side rendering or SSG build pipeline
- Dark/light theme toggle (dark only, matching current design)
- "Ask AI" chatbot in docs (Augment has this, we skip it)
- Full MDX spec compliance (only need: markdown, code blocks, tables, Mintlify components)
- API reference documentation
- i18n / multi-language support
- Analytics or tracking

## Decisions

### 1. Single HTML file per site (no build step)

Both `index.html` and `docs/index.html` are self-contained HTML files with inline CSS and JS, loading dependencies from CDN. This matches the existing pattern and keeps deployment trivial (just copy files to nginx).

**Alternative considered**: Vite/Astro build pipeline → rejected because it adds tooling complexity for a static marketing site. The current no-build approach works well.

### 2. Hash-based routing for docs (`#/path/to/page`)

Docs pages are loaded via `fetch()` based on the URL hash. Example: `docs/#/getting-started/introduction` fetches `docs/getting-started/introduction.mdx`.

**Alternative considered**: History API with nginx `try_files` → rejected because it requires nginx config changes for every route pattern and complicates local development. Hash routing works everywhere with zero server config.

### 3. marked.js + Prism.js for MDX rendering

- `marked.js` (CDN, ~40KB) parses markdown to HTML
- `Prism.js` (CDN, ~20KB with theme) handles syntax highlighting
- Custom pre-processing step converts Mintlify components (`<Card>`, `<Warning>`, `<Tip>`, `<CardGroup>`) to HTML before markdown parsing

**Alternative considered**: Remark/Rehype pipeline → rejected because it requires a build step and is much heavier. marked.js is battle-tested for client-side rendering.

### 4. Client-side search with pre-built index

A `docs/search-index.json` file contains title + description + first 200 chars of each page. Built manually (or via script). Search filters on this JSON client-side.

**Alternative considered**: Full-text search with Lunr.js → overkill for 22 pages. Simple substring matching on title + description is sufficient.

### 5. Static screenshot for hero, interactive mockup in lightbox

Export the current interactive mockup as a PNG via Playwright. Display as static `<img>` in hero. On click, open a fullscreen lightbox overlay that renders the live `<AppMockup/>` React component.

**Rationale**: Static image loads instantly and looks clean. Interactive version is preserved for users who want to explore.

### 6. Navigation data embedded in HTML

Sidebar navigation is a JS object embedded in `docs/index.html`, derived from the existing `docs.json` structure but flattened (no tabs, grouped sections).

**Alternative considered**: Fetch and parse `docs.json` at runtime → rejected because it adds a network request and requires parsing Mintlify-specific format. Embedded data is simpler and faster.

### 7. Landing page section structure (Lumide pattern)

| Order | Section | Source |
|-------|---------|--------|
| 1 | Nav (pill, floating) | Keep existing, add "Docs" link |
| 2 | Hero (centered, 1-col) | Rewrite — badge, 2-line headline, stats, CTA, screenshot |
| 3 | Comparison | New — Traditional IDE vs Spec ADE |
| 4 | Feature deep-dives | New — 2 cards with screenshots + stats |
| 5 | Feature grid | Rewrite — 6 cards (2×3) |
| 6 | Use cases | Keep, restyle |
| 7 | Roadmap | New — timeline with status badges |
| 8 | CTA | Keep, restyle cleaner |
| 9 | Footer | Rewrite — minimal 1-row |

Removed: Marquee (adds visual noise without value), Workflow (replaced by comparison + feature deep-dives).

## Risks / Trade-offs

- **[MDX component coverage]** Not all Mintlify MDX components may be used in the 22 files. Only `<Card>`, `<CardGroup>`, `<Warning>`, `<Tip>` were found. If other components exist, they'll render as raw text. → Mitigation: Grep all MDX files for `<` tags before implementation.
- **[Search quality]** Client-side substring search is basic. Won't handle typos or fuzzy matching. → Mitigation: Acceptable for 22 pages. Can upgrade to Lunr.js later if needed.
- **[CDN dependency]** marked.js and Prism.js loaded from CDN (unpkg/cdnjs). If CDN is down, docs won't render. → Mitigation: Low probability. Can vendor the files later if needed.
- **[Hash routing SEO]** Hash-based URLs are not crawlable by search engines. → Mitigation: Acceptable trade-off. Docs are primarily for existing users, not SEO traffic. The MDX files themselves are still accessible as raw files.
- **[Large single HTML files]** Both files may be 800-1000+ lines. → Mitigation: This matches the existing pattern. The current `index.html` is 1087 lines and works fine.

## Open Questions

None — all decisions were made during the exploration phase.
