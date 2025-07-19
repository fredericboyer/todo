---
id: fly-setup
title: Initial fly.io application setup
parent: ops-epic
type: task
status: TODO
acceptance_criteria:
  - fly.toml configured correctly
  - Secrets management setup
  - Health check endpoints defined
  - Initial regions selected (US-East, EU-West)
tech_notes: |
  Use fly launch for initial setup
  Configure PostgreSQL cluster
  Set up Redis for sessions/cache
---

## Description

Configure the fly.io application with proper settings for Phoenix deployment including database setup, secret management, and multi-region configuration.