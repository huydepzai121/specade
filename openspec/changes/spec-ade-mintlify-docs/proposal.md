## Why

The Spec ADE project has a landing page (`index.html`) but no documentation site. Users who discover the product have no way to learn how to install, configure, or use it beyond the README in the source repo. A proper documentation site using Mintlify will provide structured, searchable, developer-friendly docs that cover installation, core concepts, features, and guides — all hosted alongside the existing landing page.

## What Changes

- Add a complete Mintlify docs site under `docs/` directory with `docs.json` configuration
- Create 22 MDX content pages covering: getting started (introduction, installation, quickstart), core concepts (projects, sessions, claws, skills, worktrees, pane system, ACP agents), features (chat, terminal, file editor, git, search, shortcuts, process monitor, desktop app), and guides (self-hosting, custom agents, settings, licensing)
- Add `package.json` at project root for Mintlify CLI (`mint dev`, `mint build`)
- Content written in English, developer-friendly tone with code examples
- All content sourced from the actual Spec ADE codebase at `/Users/huy/Dev/www/spec-ade/`

## Capabilities

### New Capabilities
- `mintlify-docs-setup`: Mintlify project configuration (`docs.json`), directory structure, package.json, and local dev workflow
- `docs-getting-started`: Introduction, installation (npm, brew, binary), and quickstart content
- `docs-core-concepts`: Documentation for projects, sessions, claws, skills, worktrees, pane system, and ACP agents
- `docs-features`: Documentation for chat interface, terminal, file editor, git integration, search, keyboard shortcuts, process monitor, and desktop app
- `docs-guides`: Self-hosting guide, custom agents guide, settings reference, and licensing guide

### Modified Capabilities
<!-- None — this is a new docs site, no existing specs are affected -->

## Impact

- New `docs/` directory with ~25 files (22 MDX + docs.json + package.json + .mintignore)
- No changes to existing `index.html` landing page or assets
- No backend or application code changes — this is purely documentation content
- Deployment: Mintlify GitHub App auto-deploys on push, or can be previewed locally with `mint dev`
