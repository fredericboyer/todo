# Internationalization (i18n) Checklist

## Gettext Setup
- [ ] Gettext dependency added to mix.exs
- [ ] Gettext module configured in lib/
- [ ] Default locale set to English
- [ ] Locale path structure created
- [ ] Extraction task configured

## Translation Files
- [ ] English .po files created
- [ ] French .po files created
- [ ] Plural forms rules defined
- [ ] Domain files organized (default, errors)
- [ ] Translation memory initialized

## Locale Detection
- [ ] Accept-Language parser implemented
- [ ] Locale plug in router pipeline
- [ ] User preference storage in session
- [ ] Fallback locale logic defined
- [ ] Locale switcher UI component

## Code Preparation
- [ ] All user-facing strings wrapped in gettext
- [ ] Plural forms using ngettext
- [ ] Dynamic content interpolation handled
- [ ] Error messages translatable
- [ ] Email templates translatable

## UI/UX Considerations
- [ ] Date formats localized
- [ ] Time formats localized
- [ ] Number formats (decimal, currency)
- [ ] RTL layout support ready
- [ ] Locale-specific images identified
- [ ] Text expansion space allocated

## Development Workflow
- [ ] String extraction automated
- [ ] Translation workflow documented
- [ ] Translator access configured
- [ ] Review process established
- [ ] Context provided for translators

## Testing & Validation
- [ ] Each locale fully tested
- [ ] Missing translations detected
- [ ] Character encoding verified
- [ ] Format strings validated
- [ ] Locale switching tested
- [ ] Performance impact measured