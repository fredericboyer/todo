---
id: project-schema
title: Create project/list schema for task grouping
parent: database-epic
type: task
status: TODO
acceptance_criteria:
  - Project table with user association
  - Default "Inbox" project per user
  - Cascade rules for deletion
  - Unique constraint on name per user
tech_notes: |
  Consider future sharing requirements
  Add colour/icon fields for UI
  Include task count cache field
---

## Description

Implement the project schema to allow users to organize tasks into logical groups, with automatic creation of a default Inbox project for new users.