## ADDED Requirements

### Requirement: Page structure with header, hero, body, sidebar, and footer
The homepage SHALL render a full-page layout consisting of: header with logo and mega menu, hero section with search bar, main content area (70%) with sidebar (30%), and a 4-column footer. The layout SHALL use a 2-column grid for desktop that collapses to single column on mobile.

#### Scenario: Desktop viewport (>=1024px)
- **WHEN** user loads the homepage on a desktop browser
- **THEN** the page displays header (full-width), hero (full-width), content+sidebar (70/30 grid), and footer (full-width)

#### Scenario: Mobile viewport (<768px)
- **WHEN** user loads the homepage on a mobile device
- **THEN** the sidebar content moves below the main content in a single-column layout

### Requirement: Header with logo and mega menu navigation
The header SHALL contain a logo (left-aligned, linking to homepage) and a main navigation menu with the following items: "Tra cứu mã số thuế" (sub-items: Doanh nghiệp, Cá nhân), "Tra cứu theo danh mục" (sub-items: Tỉnh/Thành, Ngành nghề, Loại hình DN, Tình trạng hoạt động, DN mới), "Hướng dẫn", "Blog".

#### Scenario: User hovers on menu item with sub-items
- **WHEN** user hovers over "Tra cứu mã số thuế" or "Tra cứu theo danh mục"
- **THEN** a dropdown menu appears showing the sub-items

#### Scenario: Mobile hamburger menu
- **WHEN** user taps the hamburger icon on mobile
- **THEN** a slide-out menu appears with all navigation items and their sub-items in an accordion pattern

### Requirement: Unique visual identity
The homepage SHALL use color palette (primary: Teal #0D9488, neutrals: Slate) and typography (Be Vietnam Pro) that are completely distinct from any sister sites in the company ecosystem.

#### Scenario: Visual differentiation check
- **WHEN** the homepage design is compared to sister site designs
- **THEN** no shared colors, fonts, or visual patterns are identifiable

### Requirement: Responsive design across breakpoints
The homepage SHALL be fully responsive with breakpoints at 768px (tablet) and 1024px (desktop).

#### Scenario: Tablet viewport (768px-1023px)
- **WHEN** user views on tablet
- **THEN** the layout adjusts with reduced sidebar width or stacked layout, and touch-friendly tap targets (min 44px)

### Requirement: SEO meta and heading hierarchy
The page title SHALL be "Tra cứu mã số thuế & thông tin doanh nghiệp Việt Nam | Masothuevn.Org". The page SHALL use a single H1 tag and proper H2/H3 hierarchy for content sections.

#### Scenario: Page title renders correctly
- **WHEN** the homepage is loaded
- **THEN** the document title matches the specified SEO title

### Requirement: Breadcrumb navigation
The page SHALL display breadcrumbs in the format "Trang chủ > [Tên danh mục] > [Tên DN]" when navigating from listing blocks.

#### Scenario: User navigates from a listing block
- **WHEN** user clicks a business from "Top 10 DN mới thành lập" block
- **THEN** the destination page shows breadcrumb: "Trang chủ > Mới thành lập > [TÊN DOANH NGHIỆP]"
