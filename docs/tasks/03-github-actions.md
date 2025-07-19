---
id: github-actions
title: Create GitHub Actions workflow
parent: cicd-epic
type: task
status: TODO
acceptance_criteria:
  - Test suite runs on all PRs
  - Code coverage reporting
  - Linting and formatting checks
  - Build verification
tech_notes: |
  Use matrix builds for Elixir/OTP versions
  Cache dependencies for speed
  Require passing tests for merge
---

## Description

Set up GitHub Actions workflows for continuous integration that run tests, check code quality, and verify builds on every pull request and commit to main.