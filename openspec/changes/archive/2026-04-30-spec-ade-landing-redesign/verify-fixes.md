## 2026-04-30 Round 1 (from spx-apply auto-verify)

### spx-verifier
- Fixed: Moved blocking theme script before `<link rel="stylesheet">` in index.html head for guaranteed flash prevention
- Fixed: Moved responsive media queries from inline `<style>` to style.css — inline block now only contains mockup `.ade-*` styles

### spx-arch-verifier
- Fixed: LocaleProvider no longer fetches vi.json when VI_STRINGS is already inlined (skip redundant network request)
- Fixed: LocaleProvider useEffect only writes localStorage on first visit if not already set (removed duplicated side effect)
- Fixed: Added fallback to VI_STRINGS on locale fetch error

### spx-uiux-verifier
- Fixed: Added `:focus-visible` styles for nav-link, nav-cta, lang-toggle buttons, theme-toggle, btn, lightbox-close, lightbox-tab, footer-links
- Fixed: Added `aria-label="Close"` to lightbox close button
- Fixed: Added `role="dialog"` and `aria-modal="true"` to lightbox overlay
- Fixed: Added `aria-hidden="true"` to ThemeToggle SVG
- Fixed: Added `aria-pressed` state to LangToggle buttons
- Fixed: Added light-mode override for `hero-screenshot-glow` (reduced opacity)
- Fixed: Added light-mode override for `btn-primary:hover` box-shadow
- Fixed: Added tighter gap on `.nav-controls` at 720px mobile breakpoint
