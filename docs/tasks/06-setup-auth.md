---
id: setup-auth
title: Scaffold username/password authentication
parent: auth-epic
type: task
status: TODO
acceptance_criteria:
  - Secure password storage using bcrypt
  - Session cookies HttpOnly & SameSite=Lax
  - User schema with validations
  - Registration and login forms
tech_notes: |
  Use `mix phx.gen.auth User users` with modifications
  Ensure email field for future verification
  Plan for OAuth provider plug-in architecture
---

## Description

Generate and customize the authentication scaffolding using Phoenix's built-in authentication generator, ensuring it meets our security requirements and is extensible for future OAuth providers.