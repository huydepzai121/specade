## Why

The project currently has a Mintlify-based docs setup that requires a managed service for deployment, and a landing page with Vietnamese content and a layout that doesn't match modern dev-tool aesthetics. Two changes are needed: (1) replace the Mintlify dependency with a self-hosted HTML docs site that renders existing MDX files client-side, and (2) restructure the landing page to follow the Lumide.dev pattern (centered hero, comparison section, feature grid, roadmap timeline) with English content while keeping the existing violet color palette.

## What Changes

- **New docs SPA** (`docs/index.html`): Pure HTML/CSS/JS docs site with flat sidebar navigation, client-side MDX rendering via marked.js + Prism.js, hash-based routing, and client-side search
- **Landing page restructure** (`index.html`): Rewrite sections to follow Lumide.dev layout pattern — centered hero with static screenshot + lightbox, comparison section (Traditional vs Spec ADE), 6-card feature grid, roadmap timeline, minimal footer
- **Content language**: Translate all landing page content from Vietnamese to English
- **Interactive mockup**: Convert from inline hero element to lightbox-triggered overlay; export static screenshot via Playwright for hero image
- **Remove marquee section**: Replaced by cleaner comparison section
- **Add roadmap section**: Timeline cards with Live/In Progress/Future status badges
- **Docs search index**: Pre-built JSON file for client-side full-text search across all 22 MDX pages

## Capabilities

### New Capabilities
- `docs-html-spa`: Self-hosted documentation site as a single HTML file with sidebar navigation, MDX-to-HTML rendering (marked.js + Prism.js), hash routing, search (⌘K), Mintlify component replacement (<Card>, <Warning>, <Tip>, <CardGroup>), and responsive mobile layout
- `landing-page-redesign`: Restructured landing page following Lumide.dev pattern — centered hero, comparison section, feature grid, roadmap timeline, minimal footer — with English content and violet palette preserved
- `mockup-lightbox`: Static screenshot hero image with click-to-open interactive mockup in a fullscreen lightbox overlay

### Modified Capabilities

(none — no existing specs are being modified)

## Impact

- **Files modified**: `index.html` (major rewrite), `docs/index.html` (major rewrite), `nginx.conf` (routing updates), `Dockerfile` (asset copying)
- **Files added**: `docs/search-index.json`, `assets/screens/hero-mockup.png`
- **Dependencies added (CDN)**: marked.js (~40KB), Prism.js + theme (~20KB)
- **Dependencies removed**: Mintlify CLI (`mint` devDependency in package.json) — no longer needed for docs rendering
- **Existing MDX files**: All 22 files in `docs/` remain unchanged
- **Existing React code**: AppMockup component preserved, moved to lightbox trigger
