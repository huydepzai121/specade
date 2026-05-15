## ADDED Requirements

### Requirement: Static screenshot as hero image
The hero section SHALL display a static PNG screenshot of the interactive IDE mockup. The screenshot SHALL be exported from the current `<AppMockup/>` component using Playwright and saved to `assets/screens/hero-mockup.png`.

#### Scenario: Screenshot display
- **WHEN** the landing page hero section renders
- **THEN** a static `<img>` element displays the pre-exported mockup screenshot
- **AND** the image has rounded corners, border, and glow effect matching the current `.hero-mock` styling

### Requirement: Lightbox overlay for interactive mockup
Clicking the hero screenshot SHALL open a fullscreen lightbox overlay containing the live interactive `<AppMockup/>` React component.

#### Scenario: Lightbox open
- **WHEN** a user clicks the hero screenshot image
- **THEN** a fullscreen overlay appears with a dark semi-transparent backdrop
- **AND** the interactive `<AppMockup/>` component renders inside the overlay at a larger size
- **AND** scene tabs (File & Chat, Git, Projects, Claw) are visible below the mockup

#### Scenario: Lightbox close via backdrop
- **WHEN** the lightbox is open and the user clicks the backdrop (outside the mockup)
- **THEN** the lightbox closes and the user returns to the normal page view

#### Scenario: Lightbox close via Escape key
- **WHEN** the lightbox is open and the user presses the Escape key
- **THEN** the lightbox closes

#### Scenario: Lightbox close via close button
- **WHEN** the lightbox is open
- **THEN** a close button (×) is visible in the top-right corner
- **AND** clicking it closes the lightbox

### Requirement: Click hint on screenshot
The hero screenshot SHALL display a visual hint indicating it is clickable.

#### Scenario: Click hint display
- **WHEN** the hero screenshot is visible
- **THEN** a subtle "Click to explore" text or expand icon is displayed overlaying the bottom of the screenshot
- **AND** the cursor changes to pointer on hover
