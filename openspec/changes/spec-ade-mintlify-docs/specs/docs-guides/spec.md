## ADDED Requirements

### Requirement: Self-hosting guide
The `docs/guides/self-hosting.mdx` page SHALL document deployment options: running the single binary directly, Docker deployment, environment variable configuration, port binding, access key authentication setup, and the `--reset-auth` flag.

#### Scenario: Self-hosting instructions
- **WHEN** a user reads the self-hosting guide
- **THEN** they can deploy Spec ADE on their own server using either the binary directly or Docker, with proper auth configuration

### Requirement: Custom agents guide
The `docs/guides/custom-agents.mdx` page SHALL document how to register custom agents: the agent registry in settings.json, agent fields (id, name, mode, command, args, env), PTY vs ACP mode selection, and examples of configuring third-party AI tools as agents.

#### Scenario: Custom agent setup
- **WHEN** a user reads the custom agents guide
- **THEN** they can add a new agent to the registry and use it in sessions

### Requirement: Settings reference
The `docs/guides/settings.mdx` page SHALL document all configurable settings: editor settings (lineNumbers, lineWrapping, bracketMatching, etc.), terminal display settings (fontFamily, fontSize, fontWeight, lineHeight), CLI/timing settings, git settings, and layout settings. Settings are stored in `~/.config/spec-ade/settings.json`.

#### Scenario: Settings reference completeness
- **WHEN** a user reads the settings page
- **THEN** they find every configurable setting with its type, default value, and description

### Requirement: Licensing guide
The `docs/guides/licensing.mdx` page SHALL document the license system: license portal for generating offline licenses, Ed25519 keypair workflow, machine fingerprint activation, plan durations (1m, 1y, 3y, 5y), and JWT-based license files.

#### Scenario: License activation flow
- **WHEN** a user reads the licensing guide
- **THEN** they understand the full activation flow: portal generates license → user enters fingerprint → downloads .lic file → activates on target machine
