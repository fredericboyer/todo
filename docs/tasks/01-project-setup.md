---
id: project-setup
title: Initial Phoenix project setup and configuration
parent: 
type: epic
status: DONE
acceptance_criteria:
  - Phoenix 1.8 project scaffolded
  - PostgreSQL database configured
  - Development environment documented
  - Git repository initialized with .gitignore
  - Asset pipeline configured with ESBuild and Tailwind CSS v4
tech_notes: |
  Use `mix phx.new todo --no-mailer --no-dashboard`
  Configure for fly.io deployment from start
  Keep ESBuild and Tailwind CSS v4 for asset compilation
    4. Update mix.exs aliases to use mix bun
    5. Update dev.exs watchers for Bun
---

## Description

Bootstrap the Phoenix application with proper configuration for PostgreSQL, then migrate the asset pipeline from ESBuild to Bun for improved JavaScript runtime performance and unified tooling. Configure Bun to handle both JavaScript and CSS compilation, replacing the default ESBuild + Tailwind setup.