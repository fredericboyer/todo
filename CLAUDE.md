# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Phoenix 1.8.0 web application built with Elixir. The project uses LiveView for interactive UI components, PostgreSQL for the database, and modern frontend tooling with ESBuild and Tailwind CSS v4. The UI components are built with daisyUI, providing a comprehensive component library with custom Phoenix/Elixir-inspired light and dark themes.

## Essential Commands

### Development Setup
```bash
mix setup              # Install dependencies, create database, build assets
mix phx.server         # Start Phoenix server (http://localhost:4000)
iex -S mix phx.server  # Start server with interactive Elixir shell
```

### Database Commands
```bash
mix ecto.create        # Create the database
mix ecto.migrate       # Run database migrations
mix ecto.rollback      # Rollback last migration
mix ecto.reset         # Drop, create, and migrate database
mix ecto.gen.migration # Generate a new migration
```

### Testing
```bash
mix test               # Run all tests
mix test path/to/file  # Run specific test file
mix test --trace       # Run tests with detailed output
```

### Code Quality
```bash
mix format             # Format Elixir code
mix format --check-formatted  # Check if code is properly formatted
```

### Assets
```bash
mix assets.build       # Build frontend assets for development
mix assets.deploy      # Build minified assets for production
```

## Architecture Overview

### Directory Structure
- `lib/todo/` - Core business logic and domain models
- `lib/todo_web/` - Web layer (controllers, views, components)
- `lib/todo_web/components/` - Reusable Phoenix components and layouts
- `priv/repo/migrations/` - Database migrations
- `assets/` - Frontend assets (CSS, JavaScript)
- `test/` - Test files mirroring lib structure

### Key Files
- `lib/todo_web/router.ex` - HTTP routes and pipelines
- `lib/todo_web/endpoint.ex` - Phoenix endpoint configuration
- `lib/todo/repo.ex` - Ecto repository for database access
- `config/*.exs` - Environment-specific configuration

### Phoenix LiveView Pattern
This project uses Phoenix LiveView for building interactive features. When creating new features:
1. LiveViews go in `lib/todo_web/live/`
2. Use `Phoenix.Component` for reusable UI components
3. Components in `lib/todo_web/components/core_components.ex` provide common UI elements

### Database Conventions
- Use Ecto schemas in `lib/todo/` directory
- Context modules group related functionality
- Migrations should be reversible when possible
- Use `mix ecto.gen.migration migration_name` to create migrations

### Testing Approach
- Unit tests for business logic in `test/todo/`
- Controller/LiveView tests in `test/todo_web/`
- Use `ConnCase` for HTTP-related tests
- Use `DataCase` for database-related tests

## Git Workflow & Commit Guidelines

### Version Control
This project uses Git with strict conventional commits and clean history requirements.

### Commit Message Format
Use **Conventional Commits** specification for all commit messages:
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, missing semi-colons, etc.)
- `refactor`: Code refactoring without changing functionality
- `perf`: Performance improvements
- `test`: Adding or updating tests
- `chore`: Build process or auxiliary tool changes
- `ci`: CI/CD pipeline changes

**Examples:**
```bash
feat(auth): add password reset functionality
fix(tasks): prevent duplicate task creation
docs(readme): update installation instructions
refactor(live): extract task component
```

### Branching & Merging Strategy
- **NO MERGE COMMITS ALLOWED** - Always use rebase to maintain clean history
- Create feature branches from `main`: `git checkout -b feature/task-name`
- Before pushing, always rebase on latest main:
  ```bash
  git checkout main
  git pull origin main
  git checkout feature/task-name
  git rebase main
  ```

### Handling Conflicts
When conflicts arise during rebase:
1. Fix conflicts in affected files
2. Validate changes with user when unsure about conflict resolution
3. Stage resolved files: `git add <resolved-files>`
4. Continue rebase: `git rebase --continue`
5. Force push to feature branch: `git push --force-with-lease origin feature/task-name`

### Pull Request Guidelines
- Squash related commits before creating PR
- Ensure linear history (no merge commits)
- Run `mix format` and all tests before pushing
- PR title should follow conventional commit format