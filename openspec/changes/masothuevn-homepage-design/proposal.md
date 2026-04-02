## Why

masothuevn.org needs a homepage that serves as the primary entry point for a Vietnamese business directory (Danh bạ Doanh nghiệp). The site operates independently and anonymously — no shared modules or visible connections to other company websites. The homepage must prioritize fast load times, clear information hierarchy, and powerful search capabilities for tax codes (MST), business names, and representatives.

## What Changes

- Create a full homepage layout with header, hero search, content body, sidebar, and footer
- Implement a sticky full-width search bar supporting diacritics-free search and batch MST lookup (up to 5, comma/newline separated)
- Build 6 business listing blocks (10 items each): newly established, featured, by province, by industry, by type/status, and SEO articles
- Add a persistent sidebar with ad placeholder, 63 provinces list, and top 5 guide articles
- Design a 4-column footer with navigation, copyright, and data source attribution
- Ensure fully responsive design with unique color palette and typography distinct from sister sites
- Implement breadcrumb navigation: Trang chủ > [Danh mục] > [Tên DN]
- SEO-optimized with title: "Tra cứu mã số thuế & thông tin doanh nghiệp Việt Nam | Masothuevn.Org"
- Design delivered as a Pencil (.pen) file

## Capabilities

### New Capabilities
- `homepage-layout`: Overall page structure — header with mega menu, hero section, main content + sidebar grid, footer. Responsive breakpoints for mobile/tablet/desktop.
- `search-bar`: Full-width sticky search supporting diacritics-free input, batch MST lookup (up to 5), placeholder text, and auto-suggest UX.
- `business-listing-blocks`: Reusable card/list components for displaying top-10 business entries with MST, representative, address, and establishment date. Used across 5 different listing sections.
- `sidebar-components`: Province directory (63 items), ad placeholder, and recent guide articles widget.
- `seo-articles-block`: Grid of 6 latest guide/blog articles with thumbnail, title, and excerpt.
- `footer-navigation`: 4-column footer with nav links, copyright, and data source notes.

### Modified Capabilities
<!-- None — this is a greenfield homepage design -->

## Impact

- New static HTML/CSS page (or template) for the homepage
- Pencil design file (.pen) as the primary deliverable for visual design
- No backend dependencies — design only, with placeholder/mock data
- Must use completely independent color scheme and font stack (no overlap with sister sites)
- All design decisions must support future implementation as responsive HTML
