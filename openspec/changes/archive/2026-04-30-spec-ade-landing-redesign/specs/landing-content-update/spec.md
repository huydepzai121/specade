## ADDED Requirements

### Requirement: Enterprise use case replaces Open Source
The Use Cases section SHALL include an "Enterprise" use case instead of "Open Source". The Enterprise use case SHALL describe team-scale agent orchestration with centralized management.

#### Scenario: Enterprise use case display
- **WHEN** the Use Cases section renders
- **THEN** it displays four use cases: Solo Founder, Enterprise, Platform Team, Agency
- **AND** the Enterprise card has title "Enterprise" (EN) / "Doanh nghiệp" (VI) with description about team-scale agent management

### Requirement: Discord community links replace GitHub
All GitHub links throughout the landing page SHALL be replaced with Discord community links. This includes the navigation bar, footer, and any inline references.

#### Scenario: Footer links
- **WHEN** the footer renders
- **THEN** it displays links: Download, Docs, Discord
- **AND** there is no GitHub link
- **AND** the Discord link points to the spec-ade Discord invite URL

#### Scenario: Navigation links
- **WHEN** the navigation bar renders
- **THEN** it does not contain a GitHub link

### Requirement: Request Access CTA
The primary call-to-action SHALL be "Request Access" (EN) / "Yêu cầu truy cập" (VI) linking to the Discord invite URL. The secondary CTA "Read the docs" SHALL remain unchanged.

#### Scenario: Hero CTA buttons
- **WHEN** the hero section renders
- **THEN** the primary button text is "Request Access" (EN) or "Yêu cầu truy cập" (VI)
- **AND** the primary button links to the Discord invite URL
- **AND** the secondary button text is "Read the docs" (EN) or "Đọc tài liệu" (VI) linking to `/docs/`

#### Scenario: Bottom CTA section
- **WHEN** the bottom CTA section renders
- **THEN** the heading is "Stop wiring agents manually. Start running them." (EN) or equivalent Vietnamese
- **AND** the primary button is "Request Access" / "Yêu cầu truy cập" linking to Discord
- **AND** the secondary button shows the npm install command: `npm i -g @spec-ade/cli`

#### Scenario: Platform availability text
- **WHEN** the hero section renders
- **THEN** the platform text reads "Available for macOS, Linux and Windows" (EN) or "Hỗ trợ macOS, Linux và Windows" (VI)

### Requirement: Accurate product description
The hero subtitle and comparison section SHALL accurately describe spec-ade as a closed-source product. No references to open-source, public repositories, or community contributions to source code.

#### Scenario: Hero subtitle
- **WHEN** the hero section renders
- **THEN** the subtitle describes spec-ade as a unified workspace for AI agents without implying open-source nature

#### Scenario: Footer copyright
- **WHEN** the footer renders
- **THEN** the copyright text reads "© 2026 spec-ade" with version and status indicator
- **AND** there is no "built for agents" tagline referencing open-source

### Requirement: CSS extraction
All inline CSS from the `<style>` tag in `index.html` SHALL be extracted to a separate `style.css` file linked via `<link rel="stylesheet">`.

#### Scenario: External stylesheet
- **WHEN** the page loads
- **THEN** styles are loaded from `style.css`
- **AND** there is no inline `<style>` tag in `index.html` (except the blocking theme script)

### Requirement: Navigation bar updated layout
The floating pill navigation SHALL include: logo, nav links (Features, Roadmap, Docs), language toggle (VI|EN), theme toggle (sun/moon), and CTA button (Request Access).

#### Scenario: Nav layout order
- **WHEN** the navigation bar renders
- **THEN** elements appear in order: [logo] [Features] [Roadmap] [Docs] [VI|EN] [☀/🌙] [Request Access]
