## ADDED Requirements

### Requirement: Locale auto-detection
The system SHALL detect the user's preferred language on first visit using `navigator.language`. If the browser language starts with `en`, the locale SHALL be set to English. For all other languages, the locale SHALL default to Vietnamese.

#### Scenario: English browser visits for the first time
- **WHEN** a user with browser language `en-US` visits the landing page for the first time (no localStorage entry)
- **THEN** the page renders in English

#### Scenario: Non-English browser visits for the first time
- **WHEN** a user with browser language `ja-JP` visits the landing page for the first time
- **THEN** the page renders in Vietnamese (default)

#### Scenario: Vietnamese browser visits
- **WHEN** a user with browser language `vi-VN` visits the landing page
- **THEN** the page renders in Vietnamese

### Requirement: Locale persistence
The system SHALL persist the user's language choice in `localStorage` under key `spec-ade-locale`. On subsequent visits, localStorage value SHALL take priority over browser detection.

#### Scenario: Returning user with saved preference
- **WHEN** a user who previously selected English returns to the page
- **AND** their browser language is `vi-VN`
- **THEN** the page renders in English (localStorage wins)

#### Scenario: First visit sets localStorage
- **WHEN** a user visits for the first time and the auto-detected locale is Vietnamese
- **THEN** `localStorage` key `spec-ade-locale` is set to `vi`

### Requirement: Language toggle UI
The navigation bar SHALL include a language toggle displayed as `VI | EN` text buttons. The active language SHALL be visually highlighted. Clicking the inactive language SHALL switch all page content immediately.

#### Scenario: Toggle from Vietnamese to English
- **WHEN** the page is in Vietnamese and user clicks `EN`
- **THEN** all text content switches to English without page reload
- **AND** `localStorage` key `spec-ade-locale` is updated to `en`
- **AND** the `EN` button becomes visually highlighted

#### Scenario: Toggle position in nav
- **WHEN** the navigation bar renders
- **THEN** the language toggle appears after the nav links and before the theme toggle

### Requirement: Locale file structure
All translatable strings SHALL be stored in `locales/vi.json` and `locales/en.json`. The default locale (Vietnamese) SHALL be inlined in the HTML to prevent flash of untranslated content on first load.

#### Scenario: Locale file format
- **WHEN** a locale JSON file is loaded
- **THEN** it contains a flat key-value object where keys are dot-notation identifiers (e.g., `hero.title`, `nav.features`) and values are the translated strings

#### Scenario: Default locale inlined
- **WHEN** the page loads for the first time
- **THEN** Vietnamese content is visible immediately without waiting for a JSON fetch

### Requirement: HTML lang attribute
The `<html>` element's `lang` attribute SHALL update to match the active locale (`vi` or `en`).

#### Scenario: Language attribute updates on toggle
- **WHEN** the user switches from Vietnamese to English
- **THEN** the `<html>` element's `lang` attribute changes from `vi` to `en`
