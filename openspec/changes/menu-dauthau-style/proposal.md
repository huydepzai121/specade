## Why

The current nav bar has simple text items. The reference design (DauThau.info) shows a more polished navigation: uppercase bold text, home icon on the left, dropdown arrows (▼) for sub-menus, evenly spaced items across the full width, and a search icon on the far right of the nav bar. This restyle makes the nav feel more like a traditional Vietnamese business portal.

## What Changes

- Restyle the blue nav bar to match DauThau.info: uppercase bold menu items, evenly distributed across full width
- Add a home icon (🏠) as the first nav item linking to homepage
- Add visible dropdown arrows (▼) for menu items with sub-menus
- Add a search icon button on the far right of the nav bar
- Increase nav bar height slightly and add more visual weight to items
- Ensure dropdown menus still work correctly with the new styling

## Capabilities

### New Capabilities
- `nav-bar-restyle`: Restyle the blue navigation bar to DauThau.info style with uppercase items, home icon, dropdown arrows, and search icon

### Modified Capabilities
<!-- None -->

## Impact

- `index.html`: CSS for `.header-nav`, `.nav-item`, and HTML markup for nav items (add home icon, search icon, uppercase text)
