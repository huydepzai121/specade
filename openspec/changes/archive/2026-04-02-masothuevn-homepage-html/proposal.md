## Why

The current `index.html` was built with a different visual direction (blue hero, dark footer, simplified header). A new design has been created in Pencil.dev that establishes the final visual identity for MaSoThueVN.Org — including a restructured header with contact info, tabbed search with keyword input, pill-shaped filter tabs, colored status tags, 2-column province sidebar, and light gray footer. The HTML must be updated to match this design pixel-accurately across desktop (1440px), tablet (768px), and mobile (375px) breakpoints.

## What Changes

- **Header**: Replace simple header with 2-row layout — top bar (logo + tagline, phone, email, login button, site search) and blue navigation bar (home icon + menu items with dropdowns)
- **Search Section**: Replace blue hero with light gray (#F5F5F5) section containing title, tab row (TRA CỨU MÃ SỐ THUẾ / TÌM KIẾM BẰNG AI), keyword input with label + info icon, green search button, advanced search link, and helper text
- **Filter Tabs**: Replace rectangular tabs with pill-shaped (rounded-full) blue tabs for city and industry sections; add colored status tags (amber/red) for business type section
- **Business Cards**: Update to match design spacing, font families (Be Vietnam Pro for names, Nunito Sans for meta), and layout
- **Articles Grid**: Add image placeholder area (120px height, #E3F2FD background) above each article card
- **Sidebar Province Block**: Replace list format with 2-column grid layout matching design
- **Footer**: Replace dark footer (#0F172A) with light gray (#EEEEEE) footer, 4-column layout with different content grouping
- **Typography**: Add Nunito Sans as secondary font family
- **CSS Variables**: Update color tokens to match design variables (nav-blue #2196F3, accent-green #43A047, accent-amber #D97706, accent-red #E53935)
- **Responsive**: Ensure tablet (768px) and mobile (375px) breakpoints match the corresponding Pencil frames

## Capabilities

### New Capabilities
- `homepage-redesign`: Full visual overhaul of index.html to match Pencil.dev design — header, search, content sections, sidebar, footer, and responsive breakpoints

### Modified Capabilities

## Impact

- `index.html` — complete rewrite of HTML structure and CSS
- Google Fonts — add Nunito Sans import alongside Be Vietnam Pro
- No backend/API changes — static HTML only
- SEO meta tags preserved
