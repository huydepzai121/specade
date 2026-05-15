## ADDED Requirements

### Requirement: Vietnamese MDX translations
All 22 English MDX documentation files SHALL have Vietnamese translations in the `docs/vi/` directory, mirroring the same folder structure.

#### Scenario: Complete VI translation set
- **WHEN** the `docs/vi/` directory is checked
- **THEN** it contains translations for all 22 pages: index.mdx, 3 getting-started, 7 core-concepts, 8 features, 4 guides

### Requirement: Translation accuracy
Vietnamese translations SHALL accurately convey the same technical information as the English originals. Code examples, CLI commands, and technical terms (e.g., "Claw", "Skill", "Worktree") SHALL remain in English within the Vietnamese text.

#### Scenario: Technical terms preserved
- **WHEN** a Vietnamese MDX file references a Spec ADE concept
- **THEN** terms like "Claw", "Skill", "Worktree", "Pane", "Session" remain in English
- **AND** surrounding text is in Vietnamese

### Requirement: Vietnamese search index
A `search-index-vi.json` file SHALL be created with Vietnamese titles, descriptions, and content summaries for all translated pages.

#### Scenario: Search index completeness
- **WHEN** `search-index-vi.json` is loaded
- **THEN** it contains entries for all 22 pages with Vietnamese titles and descriptions

### Requirement: Frontmatter in Vietnamese
Each Vietnamese MDX file SHALL have frontmatter with `title` and `description` in Vietnamese.

#### Scenario: Vietnamese frontmatter
- **WHEN** `docs/vi/getting-started/introduction.mdx` is read
- **THEN** its frontmatter contains `title: "Giới thiệu"` and `description` in Vietnamese
