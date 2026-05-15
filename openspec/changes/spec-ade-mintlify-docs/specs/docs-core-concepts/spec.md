## ADDED Requirements

### Requirement: Projects documentation
The `docs/core-concepts/projects.mdx` page SHALL document the project management system: adding projects by folder path, project metadata (name, icon, sortOrder), file tree navigation with gitignore-aware filtering, and multi-project state management.

#### Scenario: Project concept explained
- **WHEN** a user reads the projects page
- **THEN** they understand how to add, switch between, and manage projects in Spec ADE

### Requirement: Sessions documentation
The `docs/core-concepts/sessions.mdx` page SHALL document session lifecycle: creation, CLI type selection (Auggie vs Claude Code), session tabs with drag-reorder and rename, session persistence, and the relationship between sessions and projects.

#### Scenario: Session types explained
- **WHEN** a user reads the sessions page
- **THEN** they understand the difference between Auggie and Claude Code sessions, how to create each, and how sessions persist across restarts

### Requirement: Claws documentation
The `docs/core-concepts/claws.mdx` page SHALL document the claw system: what a claw is (an autonomous agent instance), claw definitions (name, agent, skill, schedules), lifecycle (start, idle, running, stopped), permission modes (auto_approve, deny_all, ask_via_ui, ask_via_telegram), keep-alive and auto-start behavior, and cron scheduling.

#### Scenario: Claw concept explained
- **WHEN** a user reads the claws page
- **THEN** they understand how to define, start, schedule, and manage claws with different permission modes

### Requirement: Skills documentation
The `docs/core-concepts/skills.mdx` page SHALL document the skill system: what a skill is (packaged prompt + tooling), discovery locations (workspace `.claude/skills/`, `.augment/skills/`, user home equivalents), SKILL.md frontmatter format (name, description, license, compatibility, allowedTools), and how skills attach to claws.

#### Scenario: Skill discovery explained
- **WHEN** a user reads the skills page
- **THEN** they understand the 8 scan directories, frontmatter format, and how to create and share skills

### Requirement: Worktrees documentation
The `docs/core-concepts/worktrees.mdx` page SHALL document git worktree integration: each agent gets its own worktree, parallel refactoring without affecting main branch, diff/review/merge from sidebar, and worktree lifecycle management.

#### Scenario: Worktree workflow explained
- **WHEN** a user reads the worktrees page
- **THEN** they understand how worktrees enable parallel agent work and how to manage them

### Requirement: Pane system documentation
The `docs/core-concepts/pane-system.mdx` page SHALL document the pane layout system: recursive pane tree, 9 tab kinds (session, file, spec, merge, diff, compare, gitlog, terminal, monitor), split operations, drag-resize, layout presets, and per-project layout persistence.

#### Scenario: Pane system explained
- **WHEN** a user reads the pane system page
- **THEN** they understand how to split, resize, and organize panes, and how layouts persist per project

### Requirement: ACP agents documentation
The `docs/core-concepts/acp-agents.mdx` page SHALL document the Agent Client Protocol integration: agent registry in settings, PTY mode vs ACP mode, built-in agents (auggie, claude), custom agent configuration (command, args, env), and the attach-or-spawn pattern.

#### Scenario: ACP concept explained
- **WHEN** a user reads the ACP agents page
- **THEN** they understand the difference between PTY and ACP modes, how to register custom agents, and how ACP connections are managed
