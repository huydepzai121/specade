## 1. Docs Site — Setup & Structure

- [x] 1.1 Create `docs/search-index.json` by extracting title, description, and first 200 chars from all 22 MDX files
- [x] 1.2 Rewrite `docs/index.html` with base HTML structure: CDN imports (React 18, marked.js, Prism.js + prism-tomorrow theme), root div, inline CSS for docs layout (sidebar, content area, nav bar, search modal)
- [x] 1.3 Implement navigation data as embedded JS object — flat sidebar with 9 groups derived from current `docs.json` tab/group structure

## 2. Docs Site — Core Rendering

- [x] 2.1 Implement hash-based router: listen to `hashchange`, parse `#/path/to/page`, fetch corresponding MDX file, handle default route (→ introduction) and 404
- [x] 2.2 Implement MDX pre-processor: regex replace `<Warning>` → callout div, `<Tip>` → callout div, `<Card>` → card HTML, `<CardGroup>` → grid wrapper, strip frontmatter
- [x] 2.3 Implement markdown rendering pipeline: frontmatter extraction → Mintlify component replacement → marked.js parse → Prism.js highlight on code blocks
- [x] 2.4 Implement sidebar component: grouped navigation, active page highlight, click-to-navigate, mobile hamburger toggle ← (verify: all 22 pages accessible from sidebar, active state correct, mobile menu works)

## 3. Docs Site — Search & Navigation

- [x] 3.1 Implement search modal: ⌘K / Ctrl+K shortcut to open, text input, filter `search-index.json`, display results, click to navigate, Escape to close
- [x] 3.2 Implement prev/next page navigation at bottom of content area based on linear page order
- [x] 3.3 Implement breadcrumb display (group name > page title) above page content
- [x] 3.4 Style docs content typography: prose max-width 720px, line-height 1.6, heading hierarchy, table styling, callout cards, code blocks with Prism theme ← (verify: all MDX pages render correctly — check introduction, quickstart, self-hosting for variety of markdown features including tables, code blocks, callouts, cards)

## 4. Landing Page — Hero Restructure

- [x] 4.1 Export static screenshot from current interactive mockup using Playwright → save as `assets/screens/hero-mockup.png`
- [x] 4.2 Rewrite Hero component: centered layout, badge ("AI-Powered Development Environment"), 2-line headline ("Agent-Native IDE. / Zero Friction."), subtitle with inline stats, CTA button, platform text
- [x] 4.3 Replace inline mockup with static `<img>` of hero-mockup.png, styled with glow + border + "Click to explore" hint overlay

## 5. Landing Page — Mockup Lightbox

- [x] 5.1 Implement Lightbox component: fullscreen overlay with dark backdrop, renders `<AppMockup/>` at larger size with scene tabs
- [x] 5.2 Wire lightbox: click hero screenshot → open, click backdrop / Escape / × button → close
- [x] 5.3 Preserve all existing AppMockup code (projects, files, git, chat, claw scenes) — only change where it renders ← (verify: lightbox opens/closes correctly, all 4 mockup scenes work, Escape key closes)

## 6. Landing Page — New Sections

- [x] 6.1 Create Comparison section: "Built for Agents" heading, two side-by-side cards (Traditional Setup vs Spec ADE) with stat rows
- [x] 6.2 Create FeatureDeepDive section: 2 large cards — "Multi-Agent Workspace" and "Autonomous Claws" — with descriptions and stat badges
- [x] 6.3 Rewrite Features section as 6-card grid (3×2): Terminal, Chat, Git, Worktrees, Skills, Permissions — each with icon, title, description
- [x] 6.4 Create Roadmap section: "Building the Future" heading, horizontal scrollable cards with status badges (Live/In Progress/Future)
- [x] 6.5 Restyle UseCases section: keep 4 cards (Solo Founder, Open Source, Platform Team, Agency), update styling to match new design language

## 7. Landing Page — Content & Navigation

- [x] 7.1 Translate all landing page content from Vietnamese to English (headings, descriptions, button labels, footer, nav links)
- [x] 7.2 Update Nav component: add "Docs" link pointing to `/docs/`, update link labels to English (Features, Roadmap, Docs, Download)
- [x] 7.3 Rewrite Footer as minimal single-row: logo + tagline, copyright, version/status, links (Download, Docs, GitHub, Discord)
- [x] 7.4 Rewrite CTA section: cleaner design, English copy
- [x] 7.5 Remove Marquee component and its CSS
- [x] 7.6 Remove old Workflow component and its CSS
- [x] 7.7 Update App component to render new section order: Nav → Hero → Comparison → FeatureDeepDive → Features → UseCases → Roadmap → CTA → Footer ← (verify: full page renders without errors, all sections visible, responsive on mobile, nav links scroll to correct sections)

## 8. Infrastructure

- [x] 8.1 Update `nginx.conf` to serve `docs/` directory with proper MIME types for `.mdx` files (text/plain or text/markdown)
- [x] 8.2 Update `Dockerfile` to copy `assets/` directory
- [x] 8.3 Update `package.json`: remove `mint` devDependency, update scripts ← (verify: `docker build` succeeds, nginx serves both landing page and docs site correctly)
