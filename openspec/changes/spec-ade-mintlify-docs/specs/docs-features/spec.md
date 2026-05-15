## ADDED Requirements

### Requirement: Chat interface documentation
The `docs/features/chat-interface.mdx` page SHALL document the chat system: WebSocket-based communication, SSE streaming, tool call visualization, message history, and multi-session chat.

#### Scenario: Chat features explained
- **WHEN** a user reads the chat interface page
- **THEN** they understand how chat sessions work, how tool calls are displayed, and how to interact with AI agents

### Requirement: Terminal documentation
The `docs/features/terminal.mdx` page SHALL document the integrated terminal: PTY emulation via xterm.js, slash commands (/ → command → Tab → args → Enter), terminal replay, bracketed paste mode, and cross-platform shell support (bash/zsh on Unix, PowerShell on Windows).

#### Scenario: Terminal features explained
- **WHEN** a user reads the terminal page
- **THEN** they understand how to use the integrated terminal, send slash commands, and configure terminal settings

### Requirement: File editor documentation
The `docs/features/file-editor.mdx` page SHALL document the code editor: CodeMirror 6 with syntax highlighting for 15+ languages, view/edit toggle (Ctrl+K), save (Ctrl+S), split panes (Ctrl+\), rainbow brackets, indent guides, and media file preview.

#### Scenario: Editor features explained
- **WHEN** a user reads the file editor page
- **THEN** they understand editor capabilities, keyboard shortcuts, and supported file types

### Requirement: Git integration documentation
The `docs/features/git-integration.mdx` page SHALL document git features: hybrid git2+CLI approach, status display (porcelain v2), staging/unstaging, commit, fetch/pull/push, branch management, 3-way merge editor, diff viewer, branch comparison, stash support, and git log with graph visualization.

#### Scenario: Git features explained
- **WHEN** a user reads the git integration page
- **THEN** they understand how to perform all git operations from within Spec ADE

### Requirement: Search documentation
The `docs/features/search.mdx` page SHALL document the search system: ripgrep-based file content search with grep fallback, file name search, and search result navigation.

#### Scenario: Search features explained
- **WHEN** a user reads the search page
- **THEN** they understand how to search across project files

### Requirement: Keyboard shortcuts documentation
The `docs/features/keyboard-shortcuts.mdx` page SHALL document the shortcut system: centralized shortcut store, JetBrains-compatible defaults, context-aware priority, macOS/Windows key differences, and a complete shortcut reference table.

#### Scenario: Shortcuts reference
- **WHEN** a user reads the keyboard shortcuts page
- **THEN** they find a complete table of all keyboard shortcuts organized by category

### Requirement: Process monitor documentation
The `docs/features/process-monitor.mdx` page SHALL document system monitoring: CPU/memory metrics via sysinfo, optional GPU monitoring via NVML, process list with sort/filter/kill, sparkline charts, and 3-second polling interval.

#### Scenario: Monitor features explained
- **WHEN** a user reads the process monitor page
- **THEN** they understand how to view system metrics and manage processes

### Requirement: Desktop app documentation
The `docs/features/desktop-app.mdx` page SHALL document desktop distribution: Tauri v2 sidecar wrapping the existing binary, native window with dock/taskbar icon, PWA support for browser-based installation, and platform support (macOS primary, Windows secondary).

#### Scenario: Desktop app explained
- **WHEN** a user reads the desktop app page
- **THEN** they understand the difference between browser, PWA, and native desktop modes
