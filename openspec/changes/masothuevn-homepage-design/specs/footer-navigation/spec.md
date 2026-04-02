## ADDED Requirements

### Requirement: 4-column footer layout
The footer SHALL be divided into 4 columns containing: navigation links (col 1-2), quick links and categories (col 3), and legal/attribution info (col 4).

#### Scenario: Desktop footer renders
- **WHEN** the homepage loads on desktop
- **THEN** the footer displays 4 columns side by side

#### Scenario: Mobile footer
- **WHEN** viewed on mobile
- **THEN** the footer columns stack vertically

### Requirement: Navigation link system
The footer SHALL include a comprehensive set of navigation links mirroring the main menu structure plus additional utility links.

#### Scenario: Footer nav links
- **WHEN** the footer renders
- **THEN** it contains links to all major sections: Tra cứu MST, Danh mục, Hướng dẫn, Blog

### Requirement: Copyright and data source attribution
The footer SHALL display "© masothuevn.org" copyright notice and a data source note crediting "Cổng thông tin quốc gia" and "DauThau.info".

#### Scenario: Copyright renders
- **WHEN** the footer renders
- **THEN** it shows "© masothuevn.org" and data source attribution text

### Requirement: No shared modules or sister site references
The footer SHALL NOT contain any links, logos, scripts, or references that reveal connections to other company websites. All modules SHALL be self-contained.

#### Scenario: Footer isolation check
- **WHEN** the footer HTML/design is inspected
- **THEN** no shared CSS frameworks, JS libraries, analytics IDs, or cross-site links are present
