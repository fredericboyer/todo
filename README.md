# Todo

[![CI](https://github.com/fredericboyer/todo/actions/workflows/ci.yml/badge.svg)](https://github.com/fredericboyer/todo/actions/workflows/ci.yml)

A secure, accessible, and performant task management web application built with Elixir and Phoenix LiveView.

## Prerequisites

- Elixir 1.17.3+
- Erlang/OTP 27.3+
- PostgreSQL 15+

## Quick Start

```bash
# Clone and setup
git clone https://github.com/fredericboyer/todo.git
cd todo
mix setup

# Start the server
mix phx.server
```

Visit [`http://localhost:4000`](http://localhost:4000)

## Development

### Common Commands

```bash
# Run tests
mix test

# Format code
mix format

# Database operations
mix ecto.migrate       # Run migrations
mix ecto.rollback      # Rollback last migration
mix ecto.reset         # Reset database

# Build assets
mix assets.build       # Development build
mix assets.deploy      # Production build
```

### Project Structure

```
lib/
├── todo/              # Business logic (contexts, schemas)
├── todo_web/          # Web layer (LiveViews, components)
│   ├── live/         # LiveView modules
│   └── components/   # Reusable UI components
└── todo_web.ex        # Web interface configuration
```

## Documentation

- [Product Requirements](docs/prd/PRD.md) - Detailed specifications
- [Implementation Tasks](docs/tasks/README.md) - Development roadmap
- [Checklists](docs/) - Security, accessibility, i18n, deployment guides

## Contributing

We follow [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` New features
- `fix:` Bug fixes
- `docs:` Documentation
- `refactor:` Code refactoring
- `test:` Tests
- `chore:` Maintenance

### Git Workflow

```bash
# Create feature branch
git checkout -b feature/your-feature

# Before pushing, rebase on main
git checkout main && git pull
git checkout feature/your-feature
git rebase main

# Push changes
git push --force-with-lease origin feature/your-feature
```

**Important**: No merge commits allowed - always rebase to maintain clean history.

## Deployment

Designed for [fly.io](https://fly.io) deployment:

```bash
fly launch    # Initial setup
fly deploy    # Deploy changes
```

## License

MIT License - see [LICENSE.md](LICENSE.md) file for details.