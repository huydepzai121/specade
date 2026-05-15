## 1. Project Setup

- [x] 1.1 Create `package.json` at project root with `mint` devDependency and `docs:dev`/`docs:build` scripts
- [x] 1.2 Create `docs/` directory structure: `getting-started/`, `core-concepts/`, `features/`, `guides/`, `images/`
- [x] 1.3 Create `docs/docs.json` with Mintlify config: name "Spec ADE", violet primary color, four tabs (Getting Started, Core Concepts, Features, Guides), navigation groups, and all page references
- [x] 1.4 Create `docs/.mintignore` to exclude non-doc files ← (verify: `mint dev` starts without errors, all navigation links resolve)

## 2. Getting Started Pages

- [x] 2.1 Create `docs/index.mdx` — docs homepage with product intro, quick links, feature highlights
- [x] 2.2 Create `docs/getting-started/introduction.mdx` — what is Spec ADE, value props, tech stack, supported CLIs
- [x] 2.3 Create `docs/getting-started/installation.mdx` — npm install, platform support table, env vars table, CLI args table
- [x] 2.4 Create `docs/getting-started/quickstart.mdx` — install → launch → open project → chat → spawn claw walkthrough ← (verify: all code examples are accurate, installation commands match npm package structure)

## 3. Core Concepts Pages

- [x] 3.1 Create `docs/core-concepts/projects.mdx` — project management, file tree, multi-project state
- [x] 3.2 Create `docs/core-concepts/sessions.mdx` — session lifecycle, CLI types, tabs, persistence
- [x] 3.3 Create `docs/core-concepts/claws.mdx` — claw definitions, lifecycle, permission modes, scheduling
- [x] 3.4 Create `docs/core-concepts/skills.mdx` — skill discovery, 8 scan dirs, SKILL.md format, sharing
- [x] 3.5 Create `docs/core-concepts/worktrees.mdx` — git worktree per agent, parallel work, merge from sidebar
- [x] 3.6 Create `docs/core-concepts/pane-system.mdx` — pane tree, 9 tab kinds, split/resize, layout presets
- [x] 3.7 Create `docs/core-concepts/acp-agents.mdx` — agent registry, PTY vs ACP, custom agents, attach-or-spawn ← (verify: all core concepts accurately reflect codebase, no placeholder content)

## 4. Features Pages

- [x] 4.1 Create `docs/features/chat-interface.mdx` — WebSocket chat, streaming, tool calls, message history
- [x] 4.2 Create `docs/features/terminal.mdx` — PTY, xterm, slash commands, shell support
- [x] 4.3 Create `docs/features/file-editor.mdx` — CodeMirror 6, languages, shortcuts, media preview
- [x] 4.4 Create `docs/features/git-integration.mdx` — status, staging, commit, merge editor, diff, branches
- [x] 4.5 Create `docs/features/search.mdx` — ripgrep search, file search, result navigation
- [x] 4.6 Create `docs/features/keyboard-shortcuts.mdx` — full shortcut reference table, macOS/Windows
- [x] 4.7 Create `docs/features/process-monitor.mdx` — system metrics, GPU, process management, sparklines
- [x] 4.8 Create `docs/features/desktop-app.mdx` — Tauri sidecar, PWA, platform support ← (verify: all features documented match actual Spec ADE capabilities, keyboard shortcuts are accurate)

## 5. Guides Pages

- [x] 5.1 Create `docs/guides/self-hosting.mdx` — binary deployment, Docker, env vars, auth setup
- [x] 5.2 Create `docs/guides/custom-agents.mdx` — agent registry, config fields, PTY vs ACP examples
- [x] 5.3 Create `docs/guides/settings.mdx` — complete settings reference with types and defaults
- [x] 5.4 Create `docs/guides/licensing.mdx` — license portal, keypair workflow, activation, plans ← (verify: all guides contain actionable instructions, settings reference is complete against CLAUDE.md)
