## Context

Single-file static HTML page (`index.html`) for MaSoThueVN.Org. Current implementation uses a blue hero-centric design. New Pencil.dev design establishes a directory-style layout with structured header, tabbed search, and content-heavy homepage. No backend — pure HTML/CSS/JS.

## Goals / Non-Goals

**Goals:**
- Pixel-accurate reproduction of Pencil Desktop frame (1440px) in HTML/CSS
- Responsive behavior for tablet (768px) and mobile (375px) matching Pencil frames
- Single `index.html` file with inline CSS and minimal JS
- Preserve existing SEO meta tags and semantic HTML structure

**Non-Goals:**
- No backend integration or API calls
- No build tools, frameworks, or external CSS libraries
- No functional search — inputs are visual only
- No mega menu implementation (static nav only for now)
- No Lucide icon library import — use inline SVG for icons

## Decisions

**Single-file approach**: Keep everything in one `index.html`. The page is simple enough that splitting CSS/JS adds complexity without benefit. Inline SVGs for icons avoid external dependencies.

**CSS Custom Properties for design tokens**: Map all Pencil variables to CSS `--var` tokens. This makes future theme changes trivial and matches the design system's variable structure.

**Dual font stack**: `Be Vietnam Pro` for headings/labels/nav, `Nunito Sans` for body content/meta/sidebar. Both loaded from Google Fonts.

**Flexbox layout over Grid**: Main body uses flexbox (content + sidebar) matching Pencil's horizontal layout. Articles grid uses CSS Grid for the 3-column card layout. This mirrors the design's own layout model.

**Pill tabs as styled divs**: City/industry/type filter tabs rendered as `<div>` elements with `border-radius: 16px`. No JS tab switching — active state is CSS-only for now.

**Footer light theme**: Design uses #EEEEEE background with dark text, replacing the current dark footer. 4-column grid layout.

## Risks / Trade-offs

**No icon library** → Must manually create SVG for each icon (phone, mail, search, home, chevron-right, chevron-down, info). Manageable since there are only ~8 unique icons.

**Fixed content** → Business card data is hardcoded. Future work will need templating. Not a concern for this change.

**Font loading** → Two Google Font families increase initial load. Mitigated with `font-display: swap` and `preconnect`.
