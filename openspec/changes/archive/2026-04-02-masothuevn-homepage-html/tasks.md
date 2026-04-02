## 1. CSS Foundation

- [x] 1.1 Update CSS reset and add design token variables (--nav-blue, --accent-green, --accent-amber, --accent-red, --link-blue, etc.)
- [x] 1.2 Add Nunito Sans Google Font import alongside Be Vietnam Pro
- [x] 1.3 Define base typography classes for Be Vietnam Pro (headings/nav) and Nunito Sans (body/meta)

## 2. Header

- [x] 2.1 Build top header bar: logo with tagline, phone/email groups, login button, site search input
- [x] 2.2 Build blue navigation bar: home icon, menu items (TRA CỨU MST, DANH MỤC, HƯỚNG DẪN, BLOG)
- [x] 2.3 Add inline SVG icons for phone, mail, search, home ← (verify: header matches Pencil frame PTir4 top section — logo alignment, spacing, icon sizes)

## 3. Search Section

- [x] 3.1 Replace blue hero with light gray (#F5F5F5) search section
- [x] 3.2 Build tab row with active/inactive states and blue bottom border
- [x] 3.3 Build keyword input row: label + info icon + full-width input
- [x] 3.4 Build button row: green search button + advanced search link with chevron-down icon
- [x] 3.5 Add helper text below search form ← (verify: search section layout matches Pencil frame Hltpg — tab styling, input sizing, button colors)

## 4. Content Sections

- [x] 4.1 Build section header component: title left, "Xem thêm" link right, blue bottom border
- [x] 4.2 Build business card component: name, MST/representative row, address/date row with correct fonts
- [x] 4.3 Populate "DN Mới Thành Lập" section with 3 cards
- [x] 4.4 Populate "DN Nổi Bật" section with 3 cards
- [x] 4.5 Build pill-shaped filter tabs (rounded-full, blue active/light-blue inactive)
- [x] 4.6 Populate "DN Theo Tỉnh Thành" section with city tabs + 2 cards
- [x] 4.7 Populate "DN Theo Ngành Nghề" section with industry tabs + 2 cards
- [x] 4.8 Build colored status tags (amber "Đang hoạt động", red "Ngừng hoạt động") for type section
- [x] 4.9 Populate "DN Theo Loại Hình" section with type/status tags + 2 cards
- [x] 4.10 Build articles grid: 3-column, cards with image placeholder (120px, #E3F2FD), title, date
- [x] 4.11 Populate "Bài Viết Hướng Dẫn" section with 6 article cards ← (verify: all 6 sections render with correct data, pill tabs have proper colors, business cards match KReLd component structure)

## 5. Sidebar

- [x] 5.1 Build ad placeholder block (250px height, border, centered text)
- [x] 5.2 Build province block: header with blue bottom border, 2-column grid of province links, "Xem tất cả" link
- [x] 5.3 Build sidebar articles block: header, 5 article entries with title + date ← (verify: sidebar width 320px, province grid is 2-column, article entries match Pencil frame SiIyx)

## 6. Footer

- [x] 6.1 Build light gray (#EEEEEE) footer with 4-column layout
- [x] 6.2 Populate footer columns: VỀ MASOTHUEVN.ORG, ĐIỀU HƯỚNG, DANH MỤC, LIÊN HỆ
- [x] 6.3 Add divider line and copyright text ← (verify: footer matches Pencil frame ccyIs — colors, column content, link styles)

## 7. Responsive

- [x] 7.1 Add tablet breakpoint (max-width: 1023px): adjust padding, stack sidebar below content
- [x] 7.2 Add mobile breakpoint (max-width: 767px): hide nav bar, show hamburger, single-column layout, smaller fonts
- [x] 7.3 Ensure articles grid collapses to 2-col (tablet) and 1-col (mobile) ← (verify: compare rendered output against Pencil frames YMkNQ (mobile) and CFIz4 (tablet))

## 8. JavaScript & Polish

- [x] 8.1 Add sticky search bar with IntersectionObserver on search section
- [ ] 8.2 Final visual QA: compare rendered page against Pencil screenshots for all 3 breakpoints ← (verify: pixel-level comparison of header, search, content sections, sidebar, footer against all Pencil frames)
