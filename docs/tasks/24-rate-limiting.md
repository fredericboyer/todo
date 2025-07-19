---
id: rate-limiting
title: Implement rate limiting for API endpoints
parent: security-epic
type: task
status: TODO
acceptance_criteria:
  - 10 requests/second per IP general limit
  - 100 login attempts/hour stricter limit
  - Graceful error messages
  - Whitelist for monitoring
tech_notes: |
  Use Hammer or ex_rated library
  Redis backend for distributed limiting
  Add metrics for monitoring
---

## Description

Add rate limiting to prevent abuse and ensure fair resource usage, with different limits for authentication endpoints and general API calls.