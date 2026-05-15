## 1. Dark/Light Mode for Docs

- [x] 1.1 Add blocking theme script to `docs/index.html` `<head>` (before styles) — read `spec-ade-theme` localStorage or detect `prefers-color-scheme`, set `data-theme` on `<html>`
- [x] 1.2 Add light mode CSS tokens in `docs/index.html` inline `<style>` under `:root[data-theme="light"]` — topbar, sidebar, content area, prose, code blocks, callouts, cards, search modal, page nav, footer
- [x] 1.3 Add light mode Prism.js code block overrides (light background, dark syntax colors)
- [x] 1.4 Create `ThemeToggle` React component for docs — sun/moon icon, 200ms transition, updates `data-theme` and `spec-ade-theme` localStorage
- [x] 1.5 Add `ThemeToggle` to docs `Topbar` component ← (verify: both dark and light modes render correctly across all docs UI elements — topbar, sidebar, content, code blocks, callouts, search modal)

## 2. Docs Bilingual System

- [x] 2.1 Create `docs/locales/en.json` with all docs UI chrome strings — sidebar group titles, search placeholder, page nav labels, footer text, fallback banner, 404 text
- [x] 2.2 Create `docs/locales/vi.json` with Vietnamese translations of all UI chrome strings
- [x] 2.3 Add locale detection logic to docs renderer — read `spec-ade-locale` localStorage → `navigator.language` → default `vi`. Inline VI strings as default.
- [x] 2.4 Create `LocaleContext` for docs with `locale`, `t()`, `setLocale()` — same pattern as landing page
- [x] 2.5 Create `LangToggle` React component for docs — VI|EN buttons with active highlight, updates context and `spec-ade-locale` localStorage
- [x] 2.6 Add `LangToggle` to docs `Topbar` component
- [x] 2.7 Update `<html lang>` attribute to match active locale
- [x] 2.8 Replace all hardcoded UI strings in docs renderer with `t('key')` calls — sidebar group titles, search placeholder, page nav, footer, 404 page
- [x] 2.9 Update `NAV` array to use locale keys for group titles instead of hardcoded English strings ← (verify: all UI chrome switches on locale toggle, sidebar titles in VI, search placeholder in VI, nav labels in VI)

## 3. Locale-Aware MDX Loading

- [x] 3.1 Update `DocContent` component fetch logic: when locale is `vi`, try `vi/${slug}.mdx` first, fall back to `${slug}.mdx` on 404
- [x] 3.2 Add fallback banner component: "🌐 This page is not yet available in Vietnamese / Trang này chưa được dịch sang tiếng Việt" — shown when VI file missing
- [x] 3.3 Update search index loading: rename `search-index.json` → `search-index-en.json`, load `search-index-${locale}.json` based on active locale, fall back to EN on error ← (verify: locale toggle reloads page content, fallback banner shows for untranslated pages, search loads correct index)

## 4. Content Updates

- [x] 4.1 Replace GitHub link in docs `Topbar` with Discord invite link
- [x] 4.2 Add "← Home" link to docs `Topbar` pointing to `../`
- [x] 4.3 Update docs topbar layout order: [hamburger] [logo] [spacer] [search] [VI|EN] [☀/🌙] [Discord] [← Home] ← (verify: no GitHub references remain in docs, Discord link works, Home link navigates to landing page)

## 5. Vietnamese MDX Translations

- [x] 5.1 Create `docs/vi/index.mdx` — Vietnamese docs landing page
- [x] 5.2 Create `docs/vi/getting-started/introduction.mdx` — Vietnamese translation
- [x] 5.3 Create `docs/vi/getting-started/installation.mdx` — Vietnamese translation
- [x] 5.4 Create `docs/vi/getting-started/quickstart.mdx` — Vietnamese translation
- [x] 5.5 Create `docs/vi/core-concepts/projects.mdx` — Vietnamese translation
- [x] 5.6 Create `docs/vi/core-concepts/sessions.mdx` — Vietnamese translation
- [x] 5.7 Create `docs/vi/core-concepts/claws.mdx` — Vietnamese translation
- [x] 5.8 Create `docs/vi/core-concepts/skills.mdx` — Vietnamese translation
- [x] 5.9 Create `docs/vi/core-concepts/worktrees.mdx` — Vietnamese translation
- [x] 5.10 Create `docs/vi/core-concepts/pane-system.mdx` — Vietnamese translation
- [x] 5.11 Create `docs/vi/core-concepts/acp-agents.mdx` — Vietnamese translation
- [x] 5.12 Create `docs/vi/features/chat-interface.mdx` — Vietnamese translation
- [x] 5.13 Create `docs/vi/features/terminal.mdx` — Vietnamese translation
- [x] 5.14 Create `docs/vi/features/file-editor.mdx` — Vietnamese translation
- [x] 5.15 Create `docs/vi/features/git-integration.mdx` — Vietnamese translation
- [x] 5.16 Create `docs/vi/features/search.mdx` — Vietnamese translation
- [x] 5.17 Create `docs/vi/features/keyboard-shortcuts.mdx` — Vietnamese translation
- [x] 5.18 Create `docs/vi/features/process-monitor.mdx` — Vietnamese translation
- [x] 5.19 Create `docs/vi/features/desktop-app.mdx` — Vietnamese translation
- [x] 5.20 Create `docs/vi/guides/self-hosting.mdx` — Vietnamese translation
- [x] 5.21 Create `docs/vi/guides/custom-agents.mdx` — Vietnamese translation
- [x] 5.22 Create `docs/vi/guides/licensing.mdx` — Vietnamese translation
- [x] 5.23 Create `docs/vi/guides/settings.mdx` — Vietnamese translation ← (verify: all 23 VI MDX files exist, frontmatter has Vietnamese title/description, technical terms preserved in English, code examples unchanged)

## 6. Search Indexes

- [x] 6.1 Rename `docs/search-index.json` → `docs/search-index-en.json`
- [x] 6.2 Create `docs/search-index-vi.json` with Vietnamese titles, descriptions, and content summaries for all 22 pages ← (verify: both search indexes load correctly per locale, search returns results in active language)

## 7. Infrastructure

- [x] 7.1 Update `nginx.conf` to serve `docs/locales/*.json` and `docs/vi/` with correct MIME types
- [x] 7.2 Update `Dockerfile` to copy `docs/vi/` and `docs/locales/` directories ← (verify: Docker build succeeds, all new files served correctly)
