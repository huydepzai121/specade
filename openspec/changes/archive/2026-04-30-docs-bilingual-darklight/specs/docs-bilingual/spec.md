## ADDED Requirements

### Requirement: Locale-aware MDX loading
The docs renderer SHALL load MDX files based on the active locale. When locale is `vi`, it SHALL attempt to fetch `vi/{slug}.mdx` first. If the VI file returns 404, it SHALL fall back to `{slug}.mdx` (English default).

#### Scenario: Vietnamese user views translated page
- **WHEN** locale is `vi` and `docs/vi/getting-started/introduction.mdx` exists
- **THEN** the renderer loads and displays the Vietnamese MDX content

#### Scenario: Vietnamese user views untranslated page
- **WHEN** locale is `vi` and `docs/vi/features/search.mdx` does not exist
- **THEN** the renderer loads `docs/features/search.mdx` (English)
- **AND** displays a banner below the title: "🌐 This page is not yet available in Vietnamese / Trang này chưa được dịch sang tiếng Việt"

#### Scenario: English user views page
- **WHEN** locale is `en`
- **THEN** the renderer loads `{slug}.mdx` directly (no `vi/` prefix)

### Requirement: Locale detection from shared localStorage
The docs renderer SHALL read the locale from `localStorage.getItem('spec-ade-locale')`. If not set, it SHALL detect from `navigator.language` (starts with `en` → `en`, else → `vi`). The detected locale SHALL be persisted to localStorage.

#### Scenario: User arrives from landing page with VI preference
- **WHEN** `spec-ade-locale` is `vi` in localStorage
- **THEN** docs render in Vietnamese (where available)

#### Scenario: First visit with no localStorage
- **WHEN** no `spec-ade-locale` exists in localStorage and browser language is `en-US`
- **THEN** docs render in English and `spec-ade-locale` is set to `en`

### Requirement: Language toggle in docs topbar
The docs topbar SHALL include a VI|EN toggle that switches the active locale, updates localStorage, and reloads the current page content in the new language.

#### Scenario: Toggle from EN to VI
- **WHEN** user clicks VI in the language toggle
- **THEN** the current page reloads in Vietnamese (or shows fallback banner if untranslated)
- **AND** `spec-ade-locale` is updated to `vi`
- **AND** sidebar titles update to Vietnamese

### Requirement: Docs UI chrome i18n
All UI text in the docs renderer SHALL be translatable via locale JSON files at `docs/locales/en.json` and `docs/locales/vi.json`. This includes: sidebar group titles, search placeholder, page navigation labels (Previous/Next), footer text, fallback banner text, and 404 page text.

#### Scenario: Sidebar in Vietnamese
- **WHEN** locale is `vi`
- **THEN** sidebar group titles display in Vietnamese (e.g., "Bắt đầu" instead of "Getting Started")

#### Scenario: Search placeholder in Vietnamese
- **WHEN** locale is `vi`
- **THEN** search input placeholder reads "Tìm kiếm tài liệu..." instead of "Search documentation..."

### Requirement: Locale-aware search
The docs renderer SHALL load search index based on active locale: `search-index-en.json` for English, `search-index-vi.json` for Vietnamese.

#### Scenario: Search in Vietnamese
- **WHEN** locale is `vi` and user searches "cài đặt"
- **THEN** search results come from `search-index-vi.json`

#### Scenario: Search index fallback
- **WHEN** locale is `vi` but `search-index-vi.json` fails to load
- **THEN** search falls back to `search-index-en.json`

### Requirement: HTML lang attribute
The docs `<html>` element's `lang` attribute SHALL update to match the active locale.

#### Scenario: Language attribute matches locale
- **WHEN** locale is `vi`
- **THEN** `<html lang="vi">`
