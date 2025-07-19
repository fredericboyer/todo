---
id: password-reset
title: Build password reset functionality
parent: auth-epic
type: task
status: TODO
acceptance_criteria:
  - Secure token generation
  - Rate-limited reset requests
  - Time-bound reset links (2 hours)
  - Clear user feedback
tech_notes: |
  Implement rate limiting at controller level
  Log security events for monitoring
  Test with various edge cases
---

## Description

Create a secure password reset flow that allows users to recover their accounts via email while preventing abuse through rate limiting and token expiration.