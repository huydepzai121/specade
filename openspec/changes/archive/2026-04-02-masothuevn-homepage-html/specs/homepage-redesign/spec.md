## ADDED Requirements

### Requirement: Top Header Bar
The page SHALL display a top header bar (height 80px, white background, horizontal padding 48px) containing:
- Left: Logo area with "MaSoThueVN" in blue (#2196F3, 22px, bold) + ".Org" in amber (#D97706, 22px, bold), and tagline "Danh bạ Doanh nghiệp Việt Nam" below (11px, tertiary color)
- Right: Phone icon + number, email icon + address, "Đăng nhập" button (blue bg, white text, rounded 4px), and site search input (220px) with search button

#### Scenario: Header renders at desktop width
- **WHEN** viewport is 1440px wide
- **THEN** header displays logo on left, contact info + login + search on right, all vertically centered

#### Scenario: Header renders at mobile width
- **WHEN** viewport is 375px wide
- **THEN** header collapses to show logo and hamburger menu only

### Requirement: Navigation Bar
The page SHALL display a blue (#2196F3) navigation bar (height 44px, horizontal padding 48px) with:
- Home icon (lucide house, 18px, white)
- Menu items: "TRA CỨU MST ▾", "DANH MỤC ▾", "HƯỚNG DẪN", "BLOG" (13px, 600 weight, white, Be Vietnam Pro)
- Each item padded 20px horizontal

#### Scenario: Nav bar at desktop
- **WHEN** viewport >= 1024px
- **THEN** navigation bar is visible with all menu items

#### Scenario: Nav bar at mobile
- **WHEN** viewport < 768px
- **THEN** navigation bar is hidden

### Requirement: Search Section
The page SHALL display a search section with light gray background (#F5F5F5), vertical padding 24px, horizontal padding 48px, containing:
- Title: "Tìm kiếm thông tin doanh nghiệp" (22px, 700 weight, text-primary)
- Tab row with bottom border (#2196F3, 2px): active tab "TRA CỨU MÃ SỐ THUẾ" (blue, 700 weight, 3px bottom border) and inactive tab "TÌM KIẾM BẰNG AI" (red #E53935, 500 weight)
- Search form: "Từ khóa" label + info icon + text input (full width, 40px height, rounded 4px, #BDBDBD border)
- Button row: green "Tìm kiếm" button (#43A047, white text, 38px height) + "Click để tìm kiếm nâng cao" button (gray bg, #BDBDBD border, chevron-down icon)
- Helper text: "Hỗ trợ tìm không dấu • Nhập tối đa 5 MST (ngăn cách bởi dấu phẩy)" (12px, tertiary)

#### Scenario: Search section renders correctly
- **WHEN** page loads
- **THEN** search section displays with all elements matching the design specification

### Requirement: Main Body Layout
The page SHALL use a 2-column layout for the main body (padding 32px 48px, gap 32px):
- Left column: flexible width, contains all content sections stacked vertically with 32px gap
- Right sidebar: fixed 320px width, contains ad block, province block, and articles block with 24px gap

#### Scenario: Desktop 2-column layout
- **WHEN** viewport >= 1024px
- **THEN** content and sidebar display side by side

#### Scenario: Mobile single column
- **WHEN** viewport < 768px
- **THEN** sidebar stacks below main content

### Requirement: Section Headers
Each content section SHALL have a header with:
- Left: section title (Nunito Sans, 18px, 600 weight)
- Right: "Xem thêm" link with chevron-right icon (blue, 13px, 500 weight)
- Bottom border: 2px solid #2196F3
- Padding bottom 12px

#### Scenario: Section header displays
- **WHEN** a content section renders
- **THEN** header shows title on left, link on right, with blue bottom border

### Requirement: Business Cards
Each business card SHALL be a white container with 1px #E2E8F0 border, 8px radius, 16px padding, containing:
- Business name: Be Vietnam Pro, 15px, 600 weight, blue (#2196F3), uppercase
- Meta row 1: "MST:" label + value, "Đại diện:" label + value (Nunito Sans, 13px, 500 weight)
- Meta row 2: "Địa chỉ:" label + address, "Thành lập:" label + date (Nunito Sans, 13px)
- Labels in tertiary color, values in primary/secondary color
- Cards stacked with 12px gap

#### Scenario: Business card renders with data
- **WHEN** a business card is displayed
- **THEN** all fields (name, MST, representative, address, date) are visible and properly formatted

### Requirement: Pill Filter Tabs
City and industry sections SHALL use pill-shaped tabs (border-radius 16px, height 32px, horizontal padding 16px):
- Active tab: blue (#2196F3) background, white text, 600 weight
- Inactive tab: light blue (#E3F2FD) background, blue text, 500 weight
- Tabs arranged horizontally with 8px gap
- Font: Nunito Sans, 13px

#### Scenario: Pill tabs render
- **WHEN** city or industry section displays
- **THEN** first tab is active (blue bg), remaining tabs are inactive (light blue bg)

### Requirement: Status Tags
Business type section SHALL include colored status tags alongside type tabs:
- "Đang hoạt động": amber text (#D97706) on amber bg (#FEF3C7)
- "Ngừng hoạt động": red text (#E53935) on red bg (#FEE2E2)

#### Scenario: Status tags display with correct colors
- **WHEN** business type section renders
- **THEN** status tags show with their respective color schemes

### Requirement: Articles Grid
Articles section SHALL display cards in a 3-column grid (16px gap) with each card containing:
- Image placeholder: 120px height, #E3F2FD background, 6px radius
- Title: Nunito Sans, 14px, 600 weight, line-height 1.4
- Date: 11px, tertiary color
- Card: white bg, 1px border, 8px radius, 16px padding, 10px gap

#### Scenario: Articles grid at desktop
- **WHEN** viewport >= 1024px
- **THEN** articles display in 3 columns

#### Scenario: Articles grid at mobile
- **WHEN** viewport < 768px
- **THEN** articles display in 1 column

### Requirement: Sidebar Province Block
Province sidebar SHALL display a 2-column grid of province links:
- Header: "63 Tỉnh/Thành phố" (Nunito Sans, 15px, 700 weight) with blue bottom border
- Grid: 2 columns, 6px row gap, province names as blue links (13px)
- Footer link: "Xem tất cả 63 tỉnh thành →" (blue, 13px, 500 weight)

#### Scenario: Province grid renders
- **WHEN** sidebar displays
- **THEN** provinces show in 2-column grid format with 12 entries visible

### Requirement: Footer
The page SHALL display a light gray (#EEEEEE) footer with 24px vertical padding, 48px horizontal padding:
- 4-column layout: "VỀ MASOTHUEVN.ORG", "ĐIỀU HƯỚNG", "DANH MỤC", "LIÊN HỆ"
- Column titles: Be Vietnam Pro, 13px, 700 weight, text-primary
- Links: Be Vietnam Pro, 12px, blue (#1565C0) for nav links, secondary for contact info
- Divider: 1px #BDBDBD line
- Copyright: centered, 11px, tertiary color

#### Scenario: Footer renders with 4 columns
- **WHEN** page loads at desktop width
- **THEN** footer shows 4 columns with correct content and styling

### Requirement: CSS Design Tokens
The page SHALL define CSS custom properties matching the Pencil design variables:
- `--nav-blue: #2196F3`
- `--accent-green: #43A047`
- `--accent-amber: #D97706`
- `--accent-red: #E53935`
- `--bg-gray: #F8FAFC`
- `--border: #E2E8F0`
- `--text-primary: #0F172A`
- `--text-secondary: #475569`
- `--text-tertiary: #94A3B8`
- `--link-blue: #1565C0`

#### Scenario: Design tokens applied
- **WHEN** page renders
- **THEN** all colors match the Pencil design variable values
