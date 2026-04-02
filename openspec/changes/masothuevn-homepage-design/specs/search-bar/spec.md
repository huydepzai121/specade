## ADDED Requirements

### Requirement: Full-width hero search bar
The hero section SHALL display a large, full-width search input centered on the page with placeholder text "Nhập MST / Tên DN / Người đại diện…".

#### Scenario: Initial page load
- **WHEN** user loads the homepage
- **THEN** a prominent search bar is visible in the hero section with the placeholder text

### Requirement: Sticky search on scroll
The search bar SHALL become fixed/sticky at the top of the viewport when the user scrolls past the hero section. The sticky version SHALL be a compact variant with reduced height.

#### Scenario: User scrolls past hero
- **WHEN** user scrolls down past the hero section
- **THEN** a compact search bar appears fixed at the top of the viewport

#### Scenario: User scrolls back to top
- **WHEN** user scrolls back to the hero section
- **THEN** the sticky search bar disappears and the full hero search bar is visible again

### Requirement: Diacritics-free search support
The search input SHALL accept Vietnamese text without diacritics and still match results. The design SHALL show a single unified search input (normalization is an implementation detail).

#### Scenario: User types without diacritics
- **WHEN** user types "cong ty xay dung" in the search bar
- **THEN** the system matches businesses with diacritics like "Công ty Xây dựng"

### Requirement: Batch MST lookup (up to 5)
The search SHALL support entering up to 5 tax codes (MST) simultaneously, separated by commas or newlines. The input SHALL expand to a textarea when multiple MSTs are detected.

#### Scenario: User enters multiple MSTs
- **WHEN** user types "0100100100, 0200200200, 0300300300" in the search bar
- **THEN** the system processes all 3 MSTs and returns results for each

#### Scenario: User exceeds 5 MST limit
- **WHEN** user enters more than 5 MSTs
- **THEN** the system shows a validation message indicating the 5 MST limit
