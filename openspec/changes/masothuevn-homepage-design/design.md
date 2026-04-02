## Context

masothuevn.org is a standalone Vietnamese business directory website. It must operate independently with zero shared modules, styles, or visible connections to any sister sites. The homepage is the primary entry point — optimized for fast tax code/business lookup with SEO-friendly content blocks.

The deliverable is a Pencil (.pen) design file, not production code. Implementation will follow separately.

Current state: Greenfield — no existing homepage or design assets.

## Goals / Non-Goals

**Goals:**
- Design a clean, minimal homepage in Pencil (.pen) format
- Prioritize search UX — sticky search bar, diacritics-free input, batch MST support
- Create a content-rich but fast-loading layout with 6 business listing blocks + sidebar
- Ensure responsive design (mobile/tablet/desktop)
- Unique visual identity — distinct color palette and typography from all sister sites
- SEO-optimized structure with proper heading hierarchy and breadcrumbs

**Non-Goals:**
- Backend implementation or API design
- Database schema or data pipeline
- Authentication or user accounts
- Admin panel or CMS
- Actual data population (mock data only)

## Decisions

### 1. Color Palette: Teal/Cyan primary (#0D9488) with Slate neutrals
**Rationale**: Most Vietnamese business directories use blue or red. Teal is distinctive, professional, and conveys trust. Avoids overlap with common blue (#2563EB) or red (#DC2626) palettes used by sister sites.
**Alternative considered**: Purple/Violet — rejected as too unconventional for a government-data-adjacent site.

### 2. Typography: Be Vietnam Pro (Vietnamese-optimized Google Font)
**Rationale**: Native Vietnamese diacritics support, clean geometric design, good readability at small sizes for data-dense listings. Free via Google Fonts for fast loading.
**Alternative considered**: Roboto — rejected because it's overused and lacks Vietnamese-specific optimization.

### 3. Layout: 2-column (content 70% + sidebar 30%) with full-width header/hero/footer
**Rationale**: Standard directory pattern. Sidebar provides persistent navigation (provinces, articles) without cluttering main content. Collapses to single column on mobile.
**Alternative considered**: 3-column — rejected as too dense for a minimal design goal.

### 4. Sticky Search: Fixed position after scroll past hero
**Rationale**: Search is the #1 user action. Keeping it accessible at all scroll positions reduces friction. Compact version appears in sticky header (smaller height than hero version).

### 5. Business Card Component: Horizontal card with 4 metadata fields
**Rationale**: Each listing shows: Tên DN (uppercase, bold), MST, Người đại diện, Địa chỉ, Ngày thành lập. Horizontal layout fits more items in viewport. Consistent across all 5 listing blocks.

### 6. Design Tool: Pencil (.pen)
**Rationale**: User explicitly requested Pencil. Design will be created as a .pen file with proper component structure for handoff.

## Risks / Trade-offs

- [63 provinces in sidebar is long] → Collapsible accordion or scrollable container with max-height
- [6 listing blocks + sidebar = heavy page] → Lazy loading sections below fold; skeleton placeholders
- [Sticky search may overlap content on mobile] → Compact mobile variant with reduced height
- [Batch MST search (5 at once) needs clear UX] → Textarea with comma/newline hint, not a single input
- [Diacritics-free search adds complexity] → Client-side normalization before API call; design shows single search input (implementation detail)

## Open Questions

- Ad placement dimensions for sidebar ad block (currently placeholder)
- Exact business data fields available from API (using proposed 4 fields as baseline)
- Whether "DN nổi bật" ranking criteria need visual indicators (badges, stars)
