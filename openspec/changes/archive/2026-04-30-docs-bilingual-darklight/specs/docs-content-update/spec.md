## ADDED Requirements

### Requirement: Discord link replaces GitHub
The docs topbar SHALL display a Discord link instead of GitHub. The link SHALL point to the spec-ade Discord invite URL.

#### Scenario: Topbar links
- **WHEN** the docs topbar renders
- **THEN** it shows a "Discord" link pointing to the Discord invite URL
- **AND** there is no GitHub link

### Requirement: Back to home link
The docs topbar SHALL include a "← Home" link that navigates back to the landing page (`../`).

#### Scenario: Home navigation
- **WHEN** user clicks "← Home" in the docs topbar
- **THEN** they are navigated to the landing page

### Requirement: Search index rename
The existing `search-index.json` SHALL be renamed to `search-index-en.json` for consistency with the locale-based naming pattern.

#### Scenario: EN search index path
- **WHEN** locale is `en` and search is triggered
- **THEN** the renderer loads `search-index-en.json`
