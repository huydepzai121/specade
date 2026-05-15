## Context

This project (`spec_ade_html`) currently contains only a single-page landing page (`index.html`) served by nginx. There is no documentation site. The Spec ADE product — a full-stack GUI for AI coding assistants with Vue 3 + Quasar frontend and Rust + Axum backend — lives in a separate repo at `/Users/huy/Dev/www/spec-ade/`. That repo has a detailed `CLAUDE.md` and `README.md` but no user-facing documentation site.

Mintlify is a managed documentation platform that uses MDX files + a `docs.json` config. It deploys via GitHub App (push-to-deploy) and supports local preview via the `mint` CLI. The config file is `docs.json` (not the deprecated `mint.json`). Node.js v20.17.0+ is required for the CLI.

## Goals / Non-Goals

**Goals:**
- Create a complete Mintlify docs site under `docs/` with 22 MDX pages
- Cover all user-facing aspects: installation, core concepts, features, guides
- Content sourced from the real Spec ADE codebase (accurate, not placeholder)
- Developer-friendly English content with code examples
- Local preview via `mint dev` works out of the box

**Non-Goals:**
- API reference / OpenAPI spec generation (deferred — user docs first)
- Internationalization / Vietnamese translation of docs
- Custom Mintlify components or advanced theming
- CI/CD pipeline for docs deployment (Mintlify handles this via GitHub App)
- Screenshots or video content (images/ directory created but populated later)

## Decisions

### 1. Directory structure: `docs/` at project root
All Mintlify files live in `docs/`. The `docs.json` config, all MDX pages, and images go here. This keeps docs separate from the landing page (`index.html`, `assets/`) while staying in the same repo.

Alternative considered: separate repo. Rejected because the landing page and docs are tightly coupled — same product, same deployment context.

### 2. Config: `docs.json` (not `mint.json`)
Mintlify deprecated `mint.json` in favor of `docs.json` with `$schema` support and `$ref` splitting. We use the current format.

### 3. Navigation: tabs + groups
Top-level tabs for major sections (Getting Started, Core Concepts, Features, Guides). Within each tab, groups organize related pages. This scales well as docs grow.

### 4. Content sourcing strategy
Each MDX page's content is derived from specific source files in the Spec ADE repo:
- `CLAUDE.md` — architecture, patterns, settings, data model
- `README.md` — tech stack, prerequisites, commands
- `openspec/specs/` — claw definitions, permissions, skills, lifecycle
- `spec-ade-api/src/main.rs` — CLI args, env vars
- `openspec/changes/archive/` — Tauri sidecar, npm distribution, PWA, auth designs
- `npm/cli/` — npm package structure, platform support

### 5. Package.json at project root
A minimal `package.json` is added to the project root for the `mint` CLI dependency. This does not conflict with the existing nginx-based setup.

### 6. No API reference
User explicitly chose to skip API reference. The `api-reference/` section is omitted entirely. Can be added later as a separate change.

## Risks / Trade-offs

- **Content accuracy**: Docs content is derived from codebase at a point in time. As Spec ADE evolves, docs may drift. → Mitigation: structure docs to reference concepts rather than exact code, making updates easier.
- **Mintlify is SaaS**: No self-hosted option. If Mintlify goes down, docs are unavailable. → Mitigation: MDX files are standard markdown, portable to other platforms (Docusaurus, Nextra).
- **No automated sync**: Docs don't auto-update when Spec ADE code changes. → Mitigation: out of scope for now; can add CI checks later.
