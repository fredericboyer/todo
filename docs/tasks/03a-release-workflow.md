---
id: release-workflow
title: Create automated release workflow with changelog
parent: cicd-epic
type: task
status: TODO
acceptance_criteria:
  - Semantic versioning enforced
  - CHANGELOG.md automatically updated
  - GitHub releases created with artifacts
  - Build artifacts uploaded to releases
  - Version tags created automatically
  - Release notes generated from commits
tech_notes: |
  Use conventional commits for changelog generation
  Implement release-please or similar tool
  Bundle compiled assets and Docker images
---

## Description

Set up an automated release workflow that creates GitHub releases with proper versioning, generates changelogs from conventional commits, and uploads build artifacts for distribution.

## Detailed Requirements

### Version Management
- Follow semantic versioning (MAJOR.MINOR.PATCH)
- Auto-determine version bump based on conventional commits
  - `feat:` triggers minor version bump
  - `fix:` triggers patch version bump
  - `BREAKING CHANGE:` triggers major version bump

### Changelog Generation
- Automatically update CHANGELOG.md with:
  - Version number and release date
  - Grouped changes by type (Features, Bug Fixes, etc.)
  - Breaking changes section when applicable
  - Links to commits and pull requests

### Release Artifacts
- Compiled Elixir release (using `mix release`)
- Docker images tagged with version
- Asset bundles (CSS/JS)
- Source code archives

### Workflow Triggers
- Manual trigger with version override option
- Automatic trigger on version tags (v*.*.*)

### Integration Points
- Must run after CI passes
- Should trigger deployment pipeline