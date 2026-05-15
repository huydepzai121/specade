# OpenSpec Change Proposal
**ID**: fix-mockup-match-real-app
**Date**: 2026-04-26
**Status**: Draft
**File**: `/Users/huy/Dev/www/spec_ade_html/index.html`

---

## Summary

Update the interactive mockup (`AppMockup` component and its `.ade-*` CSS) in the Spec-ade landing page to accurately reflect the real Spec-ade application UI. The current mockup was designed independently and diverges from the actual software in colors, typography, layout, and interaction patterns.

**Scope**: Only the `.ade` component tree and its CSS. Landing page marketing sections, nav, background effects, and scene tab switcher are untouched.

---

## Current State

### CSS tokens (mockup)
| Property | Current value |
|---|---|
| Background | `#0c0a14` |
| Surface | `#100e1a` |
| Border | `rgba(255,255,255,0.06)` |
| Text | `#d4d0e0` |
| Text secondary | `#6e6884` |
| Accent | `#8b6ff0` |
| Git modified | `#fbbf24` (amber) |
| Git added | `#bef264` (lime) |
| Git deleted | `#f472b6` (pink) |
| Git untracked | `#67e8f9` (cyan) |

### Layout
- Flat layout: topbar → alert banner → sidebar + main, all flush with no gaps
- Sidebar width: 240px
- Sidebar tabs: underline style (`border-bottom: 2px solid`)
- Alert banner present (`.ade-alert`)

### Typography
- Font: Geist (landing page font, not app font)

### Chat
- User bubble: violet tint (`rgba(124,91,230,0.15)`)
- Agent bubble: faint surface card
- Tool calls: single-line lime-tinted rows
- Typing indicator: text dots `·` animated with opacity
- No thought block
- Input: single-row, no toolbar

### New Claw form
- Fields: Agent, Skill, Prompt, 3 toggle rows
- No Name, Description, or Schedule fields
- Labels: uppercase 10px
- Footer: single "Run Claw" button

---

## Proposed Changes

### 1. Color Tokens — mockup scope only

Add a `.ade` scoped CSS block (or CSS custom properties under `.ade`) with real app tokens. Do not touch `:root` tokens used by marketing sections.

```css
/* Real app tokens — scoped to .ade */
.ade {
  --app-bg:       #080808;
  --app-surface:  #17191b;
  --app-raised:   #313234;
  --app-border:   #252729;
  --app-text:     #E2E4E8;
  --app-text-2:   #8A8D92;
  --app-accent:   #6E6ADE;
  --app-accent-h: #7B78E5;
  --app-pos:      #50977c;
  --app-neg:      #C4707D;
  --app-info:     #38BDF8;
  --app-warn:     #F0B429;
  --git-mod:      #5E9FEF;
  --git-add:      #68B06E;
  --git-del:      #8A8E96;
  --git-unt:      #D98080;
}
```

Replace all hardcoded hex values in `.ade-*` rules with these variables.

### 2. Typography — mockup scope only

Add IBM Plex Sans to the Google Fonts import (alongside existing Geist):

```html
<link href="https://fonts.googleapis.com/css2?family=Geist:wght@400;500;600;700&family=Geist+Mono:wght@400;500;600&family=IBM+Plex+Sans:wght@400;500;600&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
```

Set mockup font:
```css
.ade { font-family: 'IBM Plex Sans', system-ui, sans-serif; }
.ade-project-path, .ade-git-branch, .ade-git-change .file { font-family: 'Geist Mono', ui-monospace, monospace; }
```

### 3. Layout — floating cards with gaps

**Remove** the flat flush layout. Replace with a padded outer shell and floating card panels.

Current structure:
```
.ade
  .ade-topbar
  .ade-alert          ← remove
  .ade-body
    .ade-sidebar
    .ade-main
```

New structure:
```
.ade                          background: #080808, padding: 8px, gap: 8px, display: grid
  .ade-topbar-card            border-radius: 12px, height: 40px, grid-column: 2
  .ade-sidebar-card           border-radius: 12px, grid-row: 1/3, width: ~280px
  .ade-main-card              border-radius: 12px, flex: 1
```

CSS changes:
```css
.ade {
  display: grid;
  grid-template-columns: 280px 1fr;
  grid-template-rows: 40px 1fr;
  gap: 8px;
  padding: 8px;
  background: var(--app-bg);
}
.ade-sidebar-card {
  grid-row: 1 / 3;
  border-radius: 12px;
  border: 1px solid var(--app-border);
  background: var(--app-surface);
  display: flex;
  flex-direction: column;
  overflow: hidden;
}
.ade-topbar {
  border-radius: 12px;
  border: 1px solid var(--app-border);
  background: var(--app-surface);
  height: 40px;
}
.ade-main {
  border-radius: 12px;
  border: 1px solid var(--app-border);
  background: var(--app-surface);
}
```

Remove `.ade-body` wrapper div (sidebar and main become direct grid children wrapped in their card divs).

### 4. Topbar — updated content and height

Height: 40px (was 38px).

Content order (left to right):
1. Hamburger button (`☰`) — `width: 28px`, `height: 28px`
2. Project name — `font-size: 13px`, `font-weight: 600`, `color: var(--app-text)`
3. Branch widget — `padding: 2px 8px`, `border: 1px solid var(--app-border)`, `border-radius: 6px`, `font-size: 12px`, git branch SVG icon + "main"
4. Pull button (`↓`) — `padding: 2px 7px`, `border: 1px solid var(--app-border)`, `border-radius: 6px`, `font-size: 12px`
5. Push button (`↑`) — same style
6. `flex: 1` spacer
7. Theme toggle (sun icon `☀`) — `width: 28px`, `height: 28px`

Remove the `⊞` grid button. Remove the `margin-left: auto` on branch button (spacer handles alignment now).

### 5. Remove Alert Banner

Delete the `.ade-alert` div from `AppMockup` JSX and remove the `.ade-alert`, `.ade-alert-text`, `.ade-alert-btn`, `.ade-alert-close` CSS rules.

### 6. Sidebar — width, tabs, and content

**Width**: 280px (was 240px). Update grid column definition.

**Tabs — segmented control style** (replace underline tabs):

```css
.ade-sidebar-tabs {
  display: flex;
  gap: 0;
  padding: 8px 8px 6px;
  flex-shrink: 0;
}
.ade-sidebar-tabs-inner {
  display: flex;
  flex: 1;
  background: var(--app-bg);
  border-radius: 8px;
  padding: 3px;
  gap: 2px;
}
.ade-sidebar-tab {
  flex: 1;
  padding: 5px 0;
  text-align: center;
  font-size: 12.5px;
  font-weight: 500;
  border-radius: 6px;
  border: none;
  background: transparent;
  color: var(--app-text-2);
  cursor: pointer;
  transition: all .15s;
}
.ade-sidebar-tab.active {
  background: var(--app-surface);
  border: 1px solid var(--app-border);
  color: var(--app-text);
}
```

JSX change — wrap tabs in `.ade-sidebar-tabs-inner`:
```jsx
<div className="ade-sidebar-tabs">
  <div className="ade-sidebar-tabs-inner">
    {['Projects','Files','Git'].map(t => (
      <div key={t} className={`ade-sidebar-tab${sidebarTab===t?' active':''}`}>{t}</div>
    ))}
  </div>
</div>
```

**Projects view updates**:
- Section header: `font-size: 11px`, `font-weight: 500`, `color: var(--app-text-2)` (remove uppercase/bold)
- Search input: `height: 28px`, `border: 1px solid var(--app-border)`, `border-radius: 6px`, `background: var(--app-bg)`, `font-size: 12px`
- Project rows: `height: 36px`, active: `border-left: 2px solid var(--app-accent)` + `background: rgba(110,106,222,0.08)`
- Project name: `font-size: 13px`, `font-weight: 500`, `color: var(--app-text)`
- Project path: `font-size: 11px`, `color: var(--app-text-2)`, monospace
- Worktree rows: `height: 28px`, `padding-left: 28px`, `font-size: 11px`, `color: var(--app-text-2)`
- "Add Worktree" ghost button: `border: 1px dashed var(--app-border)`, `border-radius: 4px`, `font-size: 11px`, `color: var(--app-text-2)`

**Git view updates**:
- Branch display: git branch SVG icon + "main", `color: var(--app-text)`, `font-size: 12px`
- File status colors: use `--git-mod`, `--git-add`, `--git-del`, `--git-unt` variables
- Commit/Stage/Push buttons: update to use `var(--app-accent)` for primary, `var(--app-border)` for secondary border

**Bottom bar**:
- `border-top: 1px solid var(--app-border)`, `padding: 4px 8px`
- Settings icon, Claw Farm icon (with badge `2`), Sessions (with badge `3`)
- CPU sparkline bar: `background: var(--app-accent)`
- RAM sparkline bar: `background: var(--app-info)`

### 7. Chat Interface — ACP style

**User message** (replace violet bubble):
```css
.ade-chat-msg.user .ade-chat-bubble {
  background: var(--app-raised);
  border: 1px solid var(--app-border);
  border-radius: 8px;
  padding: 8px 12px;
  margin-left: 32px;
  font-size: 13px;
  color: var(--app-text);
}
```
Remove `.ade-chat-sender` label for user messages (ACP style shows no label for user).

**Agent message** (no bubble):
```css
.ade-chat-msg.agent .ade-chat-bubble {
  background: transparent;
  border: none;
  padding: 0;
  font-size: 13px;
  line-height: 1.5;
  color: var(--app-text);
}
```
Keep `.ade-chat-sender` label "Claude Code" for agent messages.

**Tool calls** — replace single-line lime rows with expandable card style:
```css
.ade-chat-tools-group {
  margin-top: 6px;
  border: 1px solid var(--app-border);
  border-radius: 6px;
  overflow: hidden;
}
.ade-chat-tools-summary {
  display: flex;
  align-items: center;
  gap: 6px;
  padding: 5px 10px;
  font-size: 11px;
  color: var(--app-text-2);
  cursor: pointer;
  background: var(--app-surface);
}
.ade-chat-tool-row {
  display: flex;
  align-items: center;
  gap: 6px;
  padding: 4px 10px;
  border-top: 1px solid var(--app-border);
  font-size: 11px;
  font-family: 'Geist Mono', monospace;
  color: var(--app-text-2);
}
.ade-chat-tool-row .tool-status-ok { color: var(--app-pos); }
```

JSX — render tools as a group card:
```jsx
{m.tools && (
  <div className="ade-chat-tools-group">
    <div className="ade-chat-tools-summary">✓ {m.tools.length} tool calls</div>
    {m.tools.map((t, ti) => (
      <div key={ti} className="ade-chat-tool-row">
        <span className="tool-status-ok">✓</span> {t}
      </div>
    ))}
  </div>
)}
```

**Streaming indicator** — replace text dots with 5×5px circle bounce:
```css
.ade-typing-dots {
  display: flex;
  align-items: center;
  gap: 4px;
  padding: 4px 0;
}
.ade-typing-dots span {
  width: 5px;
  height: 5px;
  border-radius: 50%;
  background: var(--app-text-2);
  animation: dot-bounce 0.9s ease-in-out infinite;
}
.ade-typing-dots span:nth-child(2) { animation-delay: 0.16s; }
.ade-typing-dots span:nth-child(3) { animation-delay: 0.32s; }
@keyframes dot-bounce {
  0%, 80%, 100% { transform: translateY(0); opacity: 0.4; }
  40% { transform: translateY(-4px); opacity: 1; }
}
```

JSX — replace `·` text with empty `<span>` elements (styled as circles):
```jsx
<div className="ade-typing-dots"><span/><span/><span/></div>
```

**Thought block** — add before agent streaming text:
```css
.ade-thought-block {
  font-size: 12px;
  color: var(--app-text-2);
  font-style: italic;
  padding: 4px 0 6px;
  display: flex;
  align-items: center;
  gap: 6px;
}
.ade-thought-block.active {
  animation: thought-pulse 1.5s ease-in-out infinite;
}
@keyframes thought-pulse {
  0%, 100% { opacity: 0.6; }
  50% { opacity: 1; }
}
```

Show thought block during streaming phase (before text starts), hide after streaming completes.

**Chat input** — add toolbar row:
```css
.ade-chat-input {
  padding: 8px 16px 12px;
  border-top: 1px solid var(--app-border);
  display: flex;
  flex-direction: column;
  gap: 6px;
  flex-shrink: 0;
}
.ade-chat-input-toolbar {
  display: flex;
  align-items: center;
  gap: 6px;
  font-size: 11px;
  color: var(--app-text-2);
}
.ade-chat-input-row {
  display: flex;
  align-items: flex-end;
  gap: 8px;
}
.ade-chat-input-field {
  flex: 1;
  min-height: 32px;
  padding: 6px 10px;
  border: 1px solid var(--app-border);
  border-radius: 6px;
  background: var(--app-bg);
  color: var(--app-text);
  font-size: 13px;
  font-family: inherit;
  resize: none;
  outline: none;
}
.ade-chat-send {
  width: 36px;
  height: 36px;
  border-radius: 6px;
  border: 1px solid var(--app-border);
  background: var(--app-surface);
  color: var(--app-text);
  cursor: pointer;
  font-size: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}
```

JSX — add toolbar row above input:
```jsx
<div className="ade-chat-input">
  <div className="ade-chat-input-toolbar">
    <span style={{padding:'2px 6px',border:'1px solid var(--app-border)',borderRadius:4}}>Normal</span>
    <span style={{padding:'2px 6px',border:'1px solid var(--app-border)',borderRadius:4}}>claude-opus-4-6</span>
    <span style={{marginLeft:'auto',padding:'2px 6px',border:'1px solid var(--app-border)',borderRadius:4}}>Auto ✓</span>
  </div>
  <div className="ade-chat-input-row">
    <textarea className="ade-chat-input-field" placeholder="Ask Claude Code..." readOnly rows={1}/>
    <button className="ade-chat-send">↑</button>
  </div>
</div>
```

**Status bar** — add token usage bar at bottom of chat area:
```css
.ade-chat-status {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 4px 16px;
  border-top: 1px solid var(--app-border);
  font-size: 10px;
  color: var(--app-text-2);
  flex-shrink: 0;
}
.ade-ctx-bar {
  flex: 1;
  height: 3px;
  border-radius: 2px;
  background: var(--app-raised);
  overflow: hidden;
}
.ade-ctx-bar-fill {
  height: 100%;
  border-radius: 2px;
  background: var(--app-accent);
  width: 18%;
}
```

### 8. New Claw Form — ClawCreateDialog style

Replace current form fields with:

Fields (in order):
1. **Name** (required) — text input, placeholder "my-review-bot"
2. **Description** — text input, placeholder "What does this claw do?"
3. **Agent** — styled select/dropdown, default "Claude Code (Opus 4.6)"
4. **Skill** — styled select/dropdown, default "review-pr"
5. **Schedule** — text input, placeholder "0 9 * * 1-5 (cron)"
6. **Prompt** — textarea, `min-height: 64px`, placeholder "Review all open PRs and leave comments..."

Field label style: `font-size: 12px`, `font-weight: 500`, `color: var(--app-text-2)` (remove uppercase/letter-spacing).

Input style:
```css
.ade-newclaw-input, .ade-newclaw-select {
  padding: 6px 10px;
  border: 1px solid var(--app-border);
  border-radius: 6px;
  background: var(--app-bg);
  color: var(--app-text);
  font-size: 13px;
  font-family: inherit;
}
```

Footer — replace single "Run Claw" button with Cancel + Create row:
```css
.ade-newclaw-footer {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
  padding-top: 4px;
  margin-top: auto;
}
.ade-newclaw-cancel {
  padding: 6px 14px;
  border-radius: 6px;
  border: 1px solid var(--app-border);
  background: transparent;
  color: var(--app-text-2);
  font-size: 13px;
  cursor: pointer;
}
.ade-newclaw-create {
  padding: 6px 14px;
  border-radius: 6px;
  border: none;
  background: var(--app-accent);
  color: #fff;
  font-size: 13px;
  font-weight: 500;
  cursor: pointer;
}
```

Remove the 3 toggle rows (Auto Approve, Keep Alive, Save History) — not present in ClawCreateDialog.

### 9. Streaming Animation — ACP style updates

Keep the existing `runSequence` loop logic. Update the visual rendering only:

- User messages: appear instantly, no sender label
- Agent messages: stream character by character, show "Claude Code" sender label
- Before streaming starts: show thought block with "Thinking..." + pulse animation for 700ms
- During streaming: show streaming cursor (keep existing `streaming-cursor` blink)
- Tool calls: render as `.ade-chat-tools-group` card (completed state, all rows show `✓`)
- Typing dots: use new 5×5px bounce circles

No changes to timing logic (`delay()` values, sequence order).

---

## What NOT to Change

- `:root` CSS custom properties (marketing tokens)
- `.nav`, `.hero`, `.hero-mock`, `.scene-tabs`, `.scene-tab` styles
- `.bg-fx`, `.bg-aurora`, `.cursor-glow` styles
- `.section`, `.features`, `.workflow`, `.marquee-wrap`, `.usecases`, `.cta-final`, `.footer` styles
- `Counter`, `TerminalVisual`, `TreeVisual`, `SkillsVisual`, `PermissionsVisual`, `MultiClawVisual` components
- `Nav`, `Hero`, `Marquee`, `Features`, `Workflow`, `UseCases`, `CTA`, `Footer` components
- Google Fonts import for Geist / Instrument Serif (only add IBM Plex Sans)
- React/Babel/ReactDOM script tags
- `PROJECTS`, `FILES`, `GIT_CHANGES`, `CHAT_MESSAGES` data arrays
- `useReveal`, `CursorGlow` hooks
- Scene tab switcher (`scene-tabs` below mockup)
- Auto-cycling scene interval in `Hero`

---

## Implementation Notes

1. All `.ade-*` CSS changes should be grouped in the `/* === INTERACTIVE MOCKUP === */` section, clearly separated from landing page styles.
2. The grid layout replaces the flex column + flex row nesting. The sidebar card spans both grid rows (`grid-row: 1 / 3`), topbar occupies column 2 row 1, main occupies column 2 row 2.
3. The `.ade-body` div can be removed; sidebar and main become direct children of `.ade` (wrapped in their card divs).
4. IBM Plex Sans 400/500/600 weights are sufficient; no italic needed.
5. Geist Mono remains the monospace font for paths, git file names, branch names.
6. The `streaming-cursor` blink animation can stay as-is (it's scoped to `.ade-chat-bubble`).
7. Thought block should only appear during the streaming phase of agent messages, not for committed messages.
8. The `.ade-newclaw` form should have `overflow-y: auto` to handle the taller field list within the fixed mockup height.

---

## Acceptance Criteria

- [ ] Mockup background is `#080808`, cards are `#17191b` with `#252729` borders
- [ ] IBM Plex Sans renders in mockup text (not Geist)
- [ ] Layout shows 3 floating cards with 8px gaps (sidebar spanning full height, topbar + main stacked on right)
- [ ] No alert banner visible in any scene
- [ ] Sidebar tabs render as segmented pill control, not underline tabs
- [ ] Active project row has left accent border in `#6E6ADE`
- [ ] Git file status colors: modified blue, added green, deleted gray, untracked salmon
- [ ] User chat messages have `#313234` background, no sender label
- [ ] Agent messages have no bubble background
- [ ] Tool calls render as grouped card with individual rows
- [ ] Typing indicator uses 5×5px bouncing circles
- [ ] Chat input has toolbar row (mode, model, auto-approve) above textarea
- [ ] New Claw form has 6 fields (Name, Description, Agent, Skill, Schedule, Prompt) and Cancel + Create footer
- [ ] Landing page marketing sections visually unchanged
