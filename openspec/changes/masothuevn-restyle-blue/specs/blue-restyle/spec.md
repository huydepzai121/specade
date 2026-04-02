## ADDED Requirements

### Requirement: Blue color palette replaces Teal
All CSS variables and design tokens SHALL use the blue palette: primary #0685D6, primary-dark #0560A0, primary-light #DBEAFE, primary-50 #EFF6FF. No Teal (#0D9488) references SHALL remain.

#### Scenario: All color variables updated
- **WHEN** the page loads
- **THEN** all primary-colored elements (buttons, links, accents, tabs, tags) render in blue (#0685D6) instead of teal

### Requirement: Two-bar header with blue nav bar
The header SHALL consist of two bars: a white top bar with logo and utility area, and a full-width blue (#0685D6) navigation bar below with white text menu items.

#### Scenario: Header renders with blue nav bar
- **WHEN** the homepage loads
- **THEN** a white bar with logo appears at top, followed by a full-width blue bar containing nav items (Tra cứu MST, Danh mục, Hướng dẫn, Blog) in white text

#### Scenario: Nav item hover
- **WHEN** user hovers a nav item in the blue bar
- **THEN** the item background changes to a slightly darker/lighter blue shade

### Requirement: Traditional search form section
The hero section SHALL be replaced with a lighter search section using a form layout: section title, input field with label, and a blue search button. No gradient background.

#### Scenario: Search section renders
- **WHEN** the homepage loads
- **THEN** a search section appears below the nav bar with a white/light background, a heading "Tìm kiếm thông tin doanh nghiệp", an input field, and a blue "Tìm kiếm" button
