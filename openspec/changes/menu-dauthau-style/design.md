## Context

masothuevn.org has a two-bar header (white top bar + blue nav bar). The nav bar currently has simple text items. The reference (DauThau.info) shows a more traditional Vietnamese portal nav style.

## Goals / Non-Goals

**Goals:**
- Match DauThau.info nav bar style: uppercase bold items, home icon, dropdown arrows, search icon
- Items evenly distributed with justify-content: space-around or similar
- Slightly taller nav bar (~48px) for more visual presence

**Non-Goals:**
- Changing the top bar (logo area)
- Changing dropdown content or functionality
- Adding new menu items beyond home icon and search icon

## Decisions

### 1. Uppercase bold text for nav items
All nav items use `text-transform: uppercase` and `font-weight: 600`. Font size stays at 14px.

### 2. Home icon as first item
SVG house icon from Lucide, same white color as text. Links to `/`.

### 3. Dropdown arrows
Items with sub-menus show a `▼` character (or chevron-down icon) after the text, replacing the current `▾`.

### 4. Search icon on far right
A search icon button on the right end of the nav bar, styled as a white icon on blue background.

### 5. Even distribution
Nav items use `justify-content: space-around` or equal flex distribution to spread across the full width.
