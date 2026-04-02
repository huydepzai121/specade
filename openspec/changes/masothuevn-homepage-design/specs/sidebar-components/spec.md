## ADDED Requirements

### Requirement: Ad placeholder block
The sidebar SHALL include an ad placement block that is initially empty/hidden but reserves space for future ad content.

#### Scenario: No ad content available
- **WHEN** the homepage loads with no active ad campaign
- **THEN** the ad block is hidden and does not occupy visible space

### Requirement: 63 provinces directory list
The sidebar SHALL display a vertical list of all 63 Vietnamese provinces/cities. The list SHALL be contained in a scrollable or collapsible container to manage its length.

#### Scenario: Province list renders
- **WHEN** the homepage loads
- **THEN** the sidebar shows all 63 provinces in a vertical list with links to their respective pages

#### Scenario: User clicks a province
- **WHEN** user clicks "Đà Nẵng" in the province list
- **THEN** user navigates to the Đà Nẵng province business listing page

### Requirement: Top 5 recent guide articles widget
The sidebar SHALL display the 5 most recent articles from the "Hướng dẫn" category, showing article title and publication date.

#### Scenario: Guide articles render
- **WHEN** the homepage loads
- **THEN** the sidebar shows 5 article titles from "Hướng dẫn" category, ordered by newest first

#### Scenario: User clicks an article
- **WHEN** user clicks an article title in the sidebar widget
- **THEN** user navigates to the full article page
