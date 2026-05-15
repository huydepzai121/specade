## 1. File Structure & CSS Extraction

- [x] 1.1 Create `locales/` directory with empty `vi.json` and `en.json` files
- [x] 1.2 Extract all CSS from `index.html` inline `<style>` tag to `style.css`
- [x] 1.3 Add `<link rel="stylesheet" href="style.css">` to `index.html` head
- [x] 1.4 Verify page renders identically after CSS extraction ← (verify: visual parity with current dark theme, no broken styles)

## 2. Theme Switching

- [x] 2.1 Add light mode CSS tokens in `style.css` under `:root[data-theme="light"]` — backgrounds, text colors, borders, card styles, nav, footer, buttons, all component overrides
- [x] 2.2 Add blocking `<script>` in `<head>` (before CSS link) that reads `localStorage.getItem('spec-ade-theme')` or detects `prefers-color-scheme`, sets `data-theme` attribute on `<html>`
- [x] 2.3 Create `ThemeToggle` React component — sun/moon icon button with 200ms transition, updates `data-theme` on `<html>` and saves to localStorage
- [x] 2.4 Add `ThemeToggle` to `Nav` component (after language toggle, before CTA)
- [x] 2.5 Verify both dark and light modes render correctly across all sections ← (verify: all sections readable in both themes, no invisible text, cards/nav/footer all themed, mockup section works in light mode)

## 3. Bilingual Support (i18n)

- [x] 3.1 Create `locales/vi.json` with all translatable strings — nav labels, hero content, comparison section, features, use cases, roadmap, CTA, footer
- [x] 3.2 Create `locales/en.json` with English translations of all strings
- [x] 3.3 Add locale detection logic: `localStorage.getItem('spec-ade-locale')` → `navigator.language` check → default `vi`. Inline VI strings as default in HTML
- [x] 3.4 Create `LocaleContext` React context provider with `locale`, `t()` function, and `setLocale()` method
- [x] 3.5 Create `LangToggle` React component — `VI | EN` text buttons, active highlight, updates context and localStorage
- [x] 3.6 Add `LangToggle` to `Nav` component (after nav links, before theme toggle)
- [x] 3.7 Update `<html lang>` attribute to match active locale
- [x] 3.8 Replace all hardcoded strings in React components with `t('key')` calls
- [x] 3.9 Verify both languages display correctly across all sections ← (verify: every visible string switches on toggle, no untranslated text remains, localStorage persists across reload)

## 4. Content Updates

- [x] 4.1 Replace "Open Source" use case with "Enterprise" — update title, description, icon, accent color
- [x] 4.2 Replace all GitHub links with Discord invite URL — footer links, any inline references
- [x] 4.3 Update hero CTA: primary button → "Request Access" / "Yêu cầu truy cập" linking to Discord invite
- [x] 4.4 Update bottom CTA section: primary button → "Request Access" / "Yêu cầu truy cập" linking to Discord, secondary → `npm i -g @spec-ade/cli`
- [x] 4.5 Update footer: remove GitHub link, add Discord link, update copyright text
- [x] 4.6 Update `Nav` component: remove GitHub link if present, ensure nav order is [logo] [Features] [Roadmap] [Docs] [VI|EN] [☀/🌙] [Request Access]
- [x] 4.7 Verify all content changes are accurate and no GitHub/open-source references remain ← (verify: search entire page for "github", "open source", "open-source" — zero matches; Discord links work; CTA buttons link correctly)

## 5. Final Integration & Polish

- [x] 5.1 Update `nginx.conf` to serve `locales/*.json` with correct MIME type and caching headers
- [x] 5.2 Update `Dockerfile` if needed to copy new files (`style.css`, `locales/`)
- [x] 5.3 Test full flow: first visit (auto-detect) → toggle language → toggle theme → reload (persistence) → verify all combinations (VI+dark, VI+light, EN+dark, EN+light) ← (verify: all 4 combinations render correctly, localStorage persists both preferences, no flash of wrong theme/language on reload)
