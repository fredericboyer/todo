# Accessibility Checklist

## Semantic HTML
- [ ] Use proper heading hierarchy (h1 → h2 → h3)
- [ ] Form inputs have associated labels
- [ ] Buttons use `<button>` not `<div onclick>`
- [ ] Lists use `<ul>`/`<ol>` with `<li>` elements
- [ ] Tables have headers with scope attributes

## Keyboard Navigation
- [ ] All interactive elements reachable via Tab
- [ ] Custom components support arrow keys
- [ ] Skip links to main content
- [ ] Focus visible on all interactive elements
- [ ] Modal dialogs trap focus appropriately
- [ ] Esc key closes modals/dropdowns

## Screen Reader Support
- [ ] Images have meaningful alt text
- [ ] Decorative images use empty alt=""
- [ ] ARIA labels for icon-only buttons
- [ ] Live regions for dynamic updates
- [ ] Error messages associated with inputs
- [ ] Loading states announced

## Visual Design
- [ ] Colour contrast ≥ 4.5:1 for normal text
- [ ] Colour contrast ≥ 3:1 for large text
- [ ] Information not conveyed by colour alone
- [ ] Focus indicators clearly visible
- [ ] Clickable areas ≥ 44×44 pixels
- [ ] Text can be resized to 200%

## Forms & Validation
- [ ] Required fields clearly marked
- [ ] Error messages descriptive and helpful
- [ ] Success confirmations provided
- [ ] Field format requirements explained
- [ ] Inline validation doesn't block completion

## Testing
- [ ] Test with NVDA/JAWS (Windows)
- [ ] Test with VoiceOver (macOS/iOS)
- [ ] Test keyboard-only navigation
- [ ] Run axe DevTools scan
- [ ] Test with browser zoom at 200%
- [ ] Verify with users who use assistive technology