---
id: search-filter
title: Build search and filter functionality
parent: ui-epic
type: task
status: TODO
acceptance_criteria:
  - Full-text search on title/description
  - Filter by status, priority, project, date
  - Combinable filters with clear UI
  - URL persistence for sharing
tech_notes: |
  Use PostgreSQL full-text search
  Consider Elasticsearch for scale
  Implement faceted search patterns
---

## Description

Create comprehensive search and filtering capabilities that allow users to quickly find tasks using text search and multiple filter criteria with results updating in real-time.