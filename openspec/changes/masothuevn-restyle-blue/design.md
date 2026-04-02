## Context

masothuevn.org currently has a modern Teal-based design. The restyle moves to a Blue (#0685D6) palette with a DauThau.info-inspired layout: logo bar on top, full-width blue nav bar below, and a traditional search form instead of a hero gradient.

## Goals / Non-Goals

**Goals:**
- Switch primary color from #0D9488 (Teal) to #0685D6 (Blue)
- Add a full-width blue navigation bar below the header logo area
- Restyle search section to a traditional form layout (label + input + button)
- Update all derived colors (hover, active, light, dark variants) to blue family

**Non-Goals:**
- Changing page structure or content blocks
- Adding new features or sections
- Changing typography (keep Be Vietnam Pro)

## Decisions

### 1. Blue Color Palette
- Primary: #0685D6
- Primary dark (hover): #0560A0
- Primary light: #DBEAFE
- Primary 50: #EFF6FF
- Rationale: Matches reference image. Blue conveys trust for a business directory.

### 2. Header Layout: Two-bar style
- Top bar: white background with logo left, utility links right
- Bottom bar: full-width #0685D6 background with nav items in white text
- Rationale: Matches DauThau.info reference. Classic Vietnamese portal style.

### 3. Search Section: Form-based
- Replace gradient hero with a white/light section
- Search form with label, input field, and blue button
- Keep sticky search behavior on scroll
- Rationale: More traditional, matches reference style.

## Risks / Trade-offs

- [Less modern look] → Acceptable per client preference for traditional style
- [Blue is common] → Differentiated by unique layout and content, not color alone
