## Why

The current landing page is English-only, dark-theme-only, and contains inaccurate content (references to open-source/GitHub when spec-ade is a closed-source product with a licensing system). It needs to become a bilingual (Vietnamese/English) page with dark/light mode support, accurate product positioning, and proper community links (Discord instead of GitHub).

## What Changes

- Add bilingual support (VI/EN) with auto-detect browser language, default Vietnamese, localStorage persistence
- Add dark/light mode with OS preference detection, manual toggle, localStorage persistence
- Extract inline CSS (~290 lines) to separate `style.css` with light mode design tokens
- Create `locales/vi.json` and `locales/en.json` for all UI strings
- Replace all GitHub links with Discord community links (spec-ade is closed-source)
- Replace "Open Source" use case with "Enterprise" use case
- Change download CTA from "Download Beta" to "Request Access" linking to Discord invite
- Add language toggle (VI | EN) and theme toggle (sun/moon icon) to navigation bar
- Update footer to remove GitHub references, add Discord link

## Capabilities

### New Capabilities
- `bilingual-support`: i18n system with locale JSON files, auto-detect browser language, VI|EN toggle, localStorage persistence
- `theme-switching`: Dark/light mode with CSS variable swap, OS preference detection, manual toggle with sun/moon icon, localStorage persistence
- `landing-content-update`: Updated landing page content — Enterprise use case, Discord links, Request Access CTA, accurate closed-source product positioning

### Modified Capabilities

_None._

## Impact

- `index.html` — Major rewrite: extract CSS, add i18n logic, add theme logic, update all content sections
- `style.css` — New file: extracted CSS with added `:root[data-theme="light"]` tokens
- `locales/vi.json`, `locales/en.json` — New files: all translatable strings
- `nginx.conf` — May need update to serve new static files
- `Dockerfile` — May need update if file structure changes
- No backend changes. No docs changes (docs remain English-only, separate concern).
