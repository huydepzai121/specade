## ADDED Requirements

### Requirement: Docs site renders as single HTML file
The docs site SHALL be a single `docs/index.html` file that loads React, marked.js, and Prism.js from CDN. No build step SHALL be required. The file SHALL be self-contained with inline CSS and JS.

#### Scenario: Page load
- **WHEN** a user navigates to `/docs/` or `/docs/index.html`
- **THEN** the docs site loads and displays the introduction page by default

#### Scenario: No build step
- **WHEN** the HTML file is served by any static file server (nginx, python -m http.server, etc.)
- **THEN** the docs site functions correctly without any prior build or compilation step

### Requirement: Flat sidebar navigation with grouped sections
The sidebar SHALL display all 22 doc pages organized into groups without tabs. Groups SHALL be: Getting Started, Workspace, Agents, Version Control, Editor & Terminal, Git & Search, System, Deployment, Configuration.

#### Scenario: Sidebar displays all groups
- **WHEN** the docs site loads
- **THEN** the sidebar shows all 9 groups with their pages listed under each group heading

#### Scenario: Active page highlight
- **WHEN** a user is viewing a specific page
- **THEN** that page's sidebar entry is visually highlighted (different background/text color)

#### Scenario: Mobile responsive
- **WHEN** the viewport width is below 768px
- **THEN** the sidebar is hidden behind a hamburger menu button
- **AND** clicking the hamburger button toggles the sidebar as an overlay

### Requirement: Hash-based routing
The docs site SHALL use hash-based routing where the URL hash maps to an MDX file path. The format SHALL be `#/path/to/page` mapping to `docs/path/to/page.mdx`.

#### Scenario: Direct URL navigation
- **WHEN** a user navigates to `docs/#/getting-started/installation`
- **THEN** the system fetches `docs/getting-started/installation.mdx` and renders it

#### Scenario: Default route
- **WHEN** a user navigates to `docs/` or `docs/#/` with no specific path
- **THEN** the system renders `docs/getting-started/introduction.mdx`

#### Scenario: Invalid route
- **WHEN** a user navigates to a hash path that doesn't match any MDX file
- **THEN** the system displays a "Page not found" message in the content area

#### Scenario: Sidebar click navigation
- **WHEN** a user clicks a page link in the sidebar
- **THEN** the URL hash updates and the corresponding MDX content renders

### Requirement: MDX to HTML rendering
The system SHALL fetch MDX files via `fetch()`, parse frontmatter (title, description), convert markdown to HTML using marked.js, and apply syntax highlighting to code blocks using Prism.js.

#### Scenario: Markdown rendering
- **WHEN** an MDX file is fetched and contains standard markdown (headings, paragraphs, lists, tables, code blocks, links, images)
- **THEN** all elements render as properly styled HTML

#### Scenario: Frontmatter parsing
- **WHEN** an MDX file contains YAML frontmatter between `---` delimiters
- **THEN** the `title` field is used as the page heading and the `description` field is shown as a subtitle

#### Scenario: Code block syntax highlighting
- **WHEN** a code block has a language identifier (e.g., ```bash, ```rust, ```typescript)
- **THEN** Prism.js applies syntax highlighting with the appropriate language grammar

### Requirement: Mintlify component replacement
The system SHALL replace Mintlify-specific MDX components with styled HTML equivalents before markdown parsing.

#### Scenario: Warning component
- **WHEN** the MDX content contains `<Warning>...</Warning>`
- **THEN** it renders as a callout card with amber left border and warning icon

#### Scenario: Tip component
- **WHEN** the MDX content contains `<Tip>...</Tip>`
- **THEN** it renders as a callout card with cyan left border and tip icon

#### Scenario: Card and CardGroup components
- **WHEN** the MDX content contains `<CardGroup cols={N}>` with `<Card title="..." href="..." icon="...">` children
- **THEN** it renders as a grid of clickable cards with the specified titles and links

### Requirement: Client-side search
The system SHALL provide a search feature accessible via a search input in the top bar and the ⌘K keyboard shortcut.

#### Scenario: Search activation via keyboard
- **WHEN** a user presses ⌘K (Mac) or Ctrl+K (Windows/Linux)
- **THEN** a search modal/overlay appears with a focused text input

#### Scenario: Search results
- **WHEN** a user types a query in the search input
- **THEN** the system filters pages from `search-index.json` by matching against title, description, and content preview
- **AND** displays matching results as clickable links

#### Scenario: Search navigation
- **WHEN** a user clicks a search result
- **THEN** the search modal closes and the selected page renders in the content area

#### Scenario: No results
- **WHEN** a user types a query that matches no pages
- **THEN** the system displays "No results found"

### Requirement: Page navigation (prev/next)
The system SHALL display previous and next page links at the bottom of each page content area.

#### Scenario: Middle page
- **WHEN** a user is viewing a page that has both a previous and next page in the navigation order
- **THEN** both "← Previous" and "Next →" links are displayed

#### Scenario: First page
- **WHEN** a user is viewing the first page (Introduction)
- **THEN** only the "Next →" link is displayed

#### Scenario: Last page
- **WHEN** a user is viewing the last page (Settings)
- **THEN** only the "← Previous" link is displayed

### Requirement: Docs styling matches project theme
The docs site SHALL use the same design tokens as the landing page: violet color palette, Geist font family, dark background (#0A0A0F), and consistent border/shadow styles.

#### Scenario: Visual consistency
- **WHEN** a user navigates from the landing page to the docs site
- **THEN** the color palette, typography, and overall dark theme feel consistent between both pages

#### Scenario: Content typography
- **WHEN** doc content is rendered
- **THEN** prose text uses optimized line-height (1.6+), max-width of 720px, and appropriate heading hierarchy
