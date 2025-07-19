---
id: project-setup
title: Initial Phoenix project setup and configuration
parent: 
type: epic
status: IN_PROGRESS
acceptance_criteria:
  - Phoenix 1.8 project scaffolded
  - PostgreSQL database configured
  - Development environment documented
  - Git repository initialized with .gitignore
  - ESBuild replaced with Bun for asset compilation
  - Tailwind CSS configured via Bun
tech_notes: |
  Use `mix phx.new todo --no-mailer --no-dashboard`
  Configure for fly.io deployment from start
  Migrate from ESBuild to Bun:
    1. Add {:bun, "~> 1.5", runtime: Mix.env() == :dev} to deps
    2. Remove :esbuild and :tailwind dependencies
    3. Configure Bun in config/config.exs with version "1.1.22"
    4. Update mix.exs aliases to use mix bun
    5. Update dev.exs watchers for Bun
---

## Description

Bootstrap the Phoenix application with proper configuration for PostgreSQL, then migrate the asset pipeline from ESBuild to Bun for improved JavaScript runtime performance and unified tooling. Configure Bun to handle both JavaScript and CSS compilation, replacing the default ESBuild + Tailwind setup.