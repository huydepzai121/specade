## ADDED Requirements

### Requirement: Uppercase bold nav items
All navigation items in the blue bar SHALL use uppercase text (text-transform: uppercase) and font-weight 600.

#### Scenario: Nav items render uppercase
- **WHEN** the homepage loads
- **THEN** all nav bar items display in uppercase bold white text

### Requirement: Home icon as first nav item
The nav bar SHALL have a home icon (house SVG) as the first item, linking to the homepage `/`.

#### Scenario: Home icon visible
- **WHEN** the nav bar renders
- **THEN** a white house icon appears as the leftmost item in the blue bar

### Requirement: Dropdown arrows for sub-menu items
Nav items with dropdown sub-menus SHALL display a visible down arrow (▼ or chevron-down) after the text.

#### Scenario: Arrow visible on hover-capable items
- **WHEN** the nav bar renders
- **THEN** "TRA CỨU MST" and "DANH MỤC" show a ▼ arrow after their text

### Requirement: Search icon on far right
The nav bar SHALL include a search icon button on the far right side.

#### Scenario: Search icon renders
- **WHEN** the nav bar renders
- **THEN** a white search icon appears on the right end of the blue bar

### Requirement: Even distribution of nav items
Nav items SHALL be evenly distributed across the full width of the nav bar.

#### Scenario: Items spread evenly
- **WHEN** the nav bar renders on desktop
- **THEN** items are evenly spaced across the full width with no clustering
