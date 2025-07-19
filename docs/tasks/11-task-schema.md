---
id: task-schema
title: Design and implement task schema
parent: database-epic
type: task
status: TODO
acceptance_criteria:
  - Task table with all required fields
  - Proper indexes for user_id, status, due_date
  - Soft delete implementation
  - Position field for ordering
tech_notes: |
  Consider UUID primary keys for future API
  Include created_at, updated_at, deleted_at
  Plan for full-text search on title/description
---

## Description

Create the core task schema with fields for title, description, status, priority, due date, and positioning, ensuring efficient querying and data integrity at the database level.