## ADDED Requirements

### Requirement: Dark/light mode CSS variables
The docs renderer SHALL support dark and light themes via CSS custom properties. Dark tokens on `:root`, light overrides on `:root[data-theme="light"]`.

#### Scenario: Light mode rendering
- **WHEN** `data-theme="light"` is set on `<html>`
- **THEN** all docs UI elements (topbar, sidebar, content, code blocks, cards, search modal, callouts) use light palette colors

#### Scenario: Dark mode rendering
- **WHEN** no `data-theme` attribute exists on `<html>`
- **THEN** docs render with the existing dark palette

### Requirement: Theme detection from shared localStorage
The docs renderer SHALL read theme from `localStorage.getItem('spec-ade-theme')`. If not set, detect from `prefers-color-scheme`. Default to dark.

#### Scenario: User arrives from landing page with light preference
- **WHEN** `spec-ade-theme` is `light` in localStorage
- **THEN** docs render in light mode

### Requirement: Flash prevention
A blocking script in `<head>` SHALL set `data-theme` on `<html>` before styles load, preventing flash of wrong theme.

#### Scenario: Light theme loads without flash
- **WHEN** `spec-ade-theme` is `light` in localStorage
- **THEN** light theme is applied before any content paints

### Requirement: Theme toggle in docs topbar
The docs topbar SHALL include a sun/moon icon toggle button with 200ms transition. Clicking it SHALL switch the theme, update `data-theme` on `<html>`, and save to `spec-ade-theme` localStorage.

#### Scenario: Toggle from dark to light
- **WHEN** user clicks the sun icon in docs topbar
- **THEN** docs switch to light mode with 200ms icon transition
- **AND** `spec-ade-theme` is updated to `light`

### Requirement: Code block theming
Code blocks (Prism.js) SHALL adapt to the active theme. Dark mode uses `prism-tomorrow` theme. Light mode SHALL use a light-compatible Prism theme or custom overrides.

#### Scenario: Code blocks in light mode
- **WHEN** theme is light
- **THEN** code blocks have light background with dark syntax colors
- **AND** code remains readable with sufficient contrast
