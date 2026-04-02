## ADDED Requirements

### Requirement: SEO articles grid block
The main content area SHALL display a block showing the 6 most recent articles from the "Hướng dẫn" category in a grid layout (2 or 3 columns). Each article card SHALL show a thumbnail image, title, and excerpt.

#### Scenario: Articles grid renders
- **WHEN** the homepage loads
- **THEN** a "Bài viết hướng dẫn" block shows 6 article cards in a responsive grid

#### Scenario: Article card content
- **WHEN** an article card is displayed
- **THEN** it shows a thumbnail (or placeholder), the article title, and a short excerpt (max 2 lines)

#### Scenario: User clicks an article card
- **WHEN** user clicks on an article card
- **THEN** user navigates to the full article page

#### Scenario: Mobile layout
- **WHEN** viewed on mobile (<768px)
- **THEN** the articles grid collapses to a single column
