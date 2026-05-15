## ADDED Requirements

### Requirement: Introduction page
The `docs/getting-started/introduction.mdx` page SHALL explain what Spec ADE is (a full-stack GUI for AI coding assistants), its key value propositions (multi-agent workspace, worktrees, skills, terminal emulation, git integration), supported CLI tools (Auggie, Claude Code, ACP agents), and the tech stack (Vue 3 + Quasar frontend, Rust + Axum backend).

#### Scenario: Product description accuracy
- **WHEN** a user reads the introduction page
- **THEN** the description matches the actual Spec ADE product: chat via WebSocket + PTY, file tree, project/session management, multi-platform support (macOS, Windows, Linux)

### Requirement: Installation page
The `docs/getting-started/installation.mdx` page SHALL document all installation methods: npm global install (`npm i -g @spec-ade/cli`), supported platforms (linux-x64, linux-arm64, darwin-arm64, win32-x64), system requirements (Node.js >= 18), environment variables (`SPEC_ADE_HOST`, `SPEC_ADE_PORT`, `VITE_API_BASE_URL`), and CLI arguments (`--host`, `--port`, `--reset-auth`, `--no-open`).

#### Scenario: npm installation instructions
- **WHEN** a user follows the npm installation steps
- **THEN** the instructions include `npm i -g @spec-ade/cli` and explain that platform-specific binaries are auto-resolved via optionalDependencies

#### Scenario: CLI arguments documented
- **WHEN** a user looks for CLI configuration options
- **THEN** they find a table listing all four CLI flags with their env var equivalents and default values

### Requirement: Quickstart page
The `docs/getting-started/quickstart.mdx` page SHALL walk users through: installing Spec ADE, launching it, opening their first project, starting a chat session, and spawning a claw — in under 5 minutes of reading time.

#### Scenario: End-to-end first use
- **WHEN** a new user follows the quickstart guide
- **THEN** they complete: install → launch → open project → chat with agent → see output, with code examples at each step
