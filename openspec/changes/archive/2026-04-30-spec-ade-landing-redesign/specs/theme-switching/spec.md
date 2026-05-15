## ADDED Requirements

### Requirement: Theme auto-detection
The system SHALL detect the user's OS color scheme preference on first visit using `prefers-color-scheme` media query. If the OS prefers light mode, the theme SHALL be set to light. Otherwise, the theme SHALL default to dark.

#### Scenario: Light mode OS preference on first visit
- **WHEN** a user with OS light mode preference visits for the first time (no localStorage entry)
- **THEN** the page renders in light mode

#### Scenario: Dark mode OS preference on first visit
- **WHEN** a user with OS dark mode preference visits for the first time
- **THEN** the page renders in dark mode

#### Scenario: No OS preference detected
- **WHEN** the OS does not report a color scheme preference
- **THEN** the page defaults to dark mode

### Requirement: Theme persistence
The system SHALL persist the user's theme choice in `localStorage` under key `spec-ade-theme`. On subsequent visits, localStorage value SHALL take priority over OS preference detection.

#### Scenario: Returning user with saved light preference
- **WHEN** a user who previously selected light mode returns
- **AND** their OS preference is dark mode
- **THEN** the page renders in light mode (localStorage wins)

### Requirement: Theme toggle UI
The navigation bar SHALL include a theme toggle button displaying a sun icon (☀) in dark mode and a moon icon (🌙) in light mode. The icon SHALL transition with a 200ms smooth animation on toggle.

#### Scenario: Toggle from dark to light
- **WHEN** the page is in dark mode and user clicks the sun icon
- **THEN** the page switches to light mode
- **AND** the icon animates to a moon icon over 200ms
- **AND** `localStorage` key `spec-ade-theme` is updated to `light`

#### Scenario: Toggle from light to dark
- **WHEN** the page is in light mode and user clicks the moon icon
- **THEN** the page switches to dark mode
- **AND** the icon animates to a sun icon over 200ms
- **AND** `localStorage` key `spec-ade-theme` is updated to `dark`

#### Scenario: Toggle position in nav
- **WHEN** the navigation bar renders
- **THEN** the theme toggle appears after the language toggle and before the CTA button

### Requirement: CSS variable-based theming
The theme SHALL be implemented using CSS custom properties. Dark mode tokens SHALL be defined on `:root`. Light mode tokens SHALL be defined on `:root[data-theme="light"]`. The `data-theme` attribute SHALL be set on the `<html>` element.

#### Scenario: Dark mode variables
- **WHEN** the page is in dark mode
- **THEN** the `<html>` element has no `data-theme` attribute (or `data-theme="dark"`)
- **AND** dark background colors, light text colors, and violet accent colors are applied

#### Scenario: Light mode variables
- **WHEN** the page is in light mode
- **THEN** the `<html>` element has `data-theme="light"`
- **AND** light background colors, dark text colors, and violet accent colors are applied
- **AND** all UI elements (cards, nav, footer, buttons) use the light palette

### Requirement: Flash prevention
A blocking script in `<head>` SHALL read the theme from localStorage (or detect OS preference) and set the `data-theme` attribute on `<html>` BEFORE the CSS file loads, preventing flash of wrong theme.

#### Scenario: Saved light theme loads without flash
- **WHEN** a user with `spec-ade-theme: light` in localStorage loads the page
- **THEN** the light theme is applied before any content is painted
- **AND** there is no visible flash of dark theme
