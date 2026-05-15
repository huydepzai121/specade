## ADDED Requirements

### Requirement: Centered hero section with stats
The hero section SHALL be centered (single column) with: a badge label, a 2-line display headline, a subtitle paragraph with inline performance stats, a primary CTA button with platform availability text, and a static product screenshot below.

#### Scenario: Hero layout
- **WHEN** the landing page loads
- **THEN** the hero displays centered content: badge ("AI-Powered Development Environment"), headline ("Agent-Native IDE. / Zero Friction."), subtitle with stats (50ms response, 12× parallel claws, ∞ worktrees), download CTA button, and platform text (macOS, Linux, Windows)

#### Scenario: Hero screenshot
- **WHEN** the hero section renders
- **THEN** a static PNG screenshot of the IDE mockup is displayed below the CTA area
- **AND** the screenshot has a subtle glow effect and rounded border matching the current mockup wrapper style

### Requirement: Comparison section
The landing page SHALL include a comparison section titled "Built for Agents" that contrasts traditional IDE setups with Spec ADE using two side-by-side cards with stats.

#### Scenario: Comparison display
- **WHEN** a user scrolls to the comparison section
- **THEN** two cards are visible: left card showing "Traditional Setup" pain points (context switching, manual wiring, no agent support) and right card showing "Spec ADE" benefits (unified workspace, zero config, agent-native)
- **AND** each card includes 2 stat rows with labels and values

### Requirement: Feature deep-dive section
The landing page SHALL include a section with 2 large feature cards that provide detailed descriptions with screenshots and stat badges.

#### Scenario: Feature deep-dive display
- **WHEN** a user scrolls to the feature deep-dive section
- **THEN** two cards are displayed: "Multi-Agent Workspace" (with screenshot and latency stat) and "Autonomous Claws" (with feature list: auto-approve, keep-alive, skill system)

### Requirement: Feature grid section
The landing page SHALL include a "Built for Impact" section with 6 feature cards in a 3×2 grid layout.

#### Scenario: Feature grid display
- **WHEN** a user scrolls to the feature grid section
- **THEN** 6 cards are displayed in a 3-column grid: Terminal (PTY), Chat (streaming), Git (staging/diff), Worktrees (parallel branches), Skills (reusable prompts), Permissions (guardrails)
- **AND** each card has an icon, title, and 1-2 sentence description

#### Scenario: Feature grid responsive
- **WHEN** the viewport width is below 768px
- **THEN** the grid collapses to 1 column

### Requirement: Roadmap timeline section
The landing page SHALL include a "Building the Future" roadmap section with horizontal timeline cards showing feature status.

#### Scenario: Roadmap display
- **WHEN** a user scrolls to the roadmap section
- **THEN** timeline cards are displayed with status badges: "Live" (green) for shipped features, "In Progress" (amber) for current work, "Future" (blue) for planned features
- **AND** each card has a title, short description, and decorative icon

### Requirement: Use cases section
The landing page SHALL include a "Who Ships Most" section with 4 use case cards.

#### Scenario: Use cases display
- **WHEN** a user scrolls to the use cases section
- **THEN** 4 cards are displayed: Solo Founder, Open Source, Platform Team, Agency
- **AND** each card has a title, description, and accent color indicator

### Requirement: Minimal footer
The landing page SHALL have a minimal single-row footer with logo, tagline, and links.

#### Scenario: Footer display
- **WHEN** a user scrolls to the bottom of the page
- **THEN** a footer is displayed with: logo + "spec-ade" text, copyright, version/status, and links (Download, Docs, GitHub, Discord)

### Requirement: Navigation bar with Docs link
The floating pill navigation SHALL include a "Docs" link pointing to `/docs/`.

#### Scenario: Nav links
- **WHEN** the landing page loads
- **THEN** the navigation bar includes links: Features, Roadmap, Docs, Download (CTA button)

### Requirement: English content
All landing page text content SHALL be in English.

#### Scenario: Language consistency
- **WHEN** any section of the landing page renders
- **THEN** all headings, descriptions, button labels, and footer text are in English

### Requirement: Violet palette preserved
The landing page SHALL use the existing design tokens: violet primary (#7C5BE6), dark backgrounds (#08070D, #0D0B14), Geist font family, and accent colors (cyan, lime, amber, pink).

#### Scenario: Color consistency
- **WHEN** the redesigned landing page renders
- **THEN** the color palette matches the existing design tokens defined in `:root` CSS variables
