---
id: bun-migration
title: Migrate asset pipeline from ESBuild to Bun
parent: project-setup
type: task
status: TODO
acceptance_criteria:
  - Bun hex package installed and configured
  - ESBuild and standalone Tailwind removed
  - Assets compile successfully with Bun
  - Development watchers work properly
  - Production build optimized
tech_notes: |
  Follow migration guide from https://github.com/crbelaus/bun
  Bun replaces both esbuild and tailwind dependencies
  Provides unified JavaScript runtime and build tool
---

## Description

Replace the default Phoenix asset pipeline (ESBuild + standalone Tailwind) with Bun, which provides a faster JavaScript runtime and integrated build tooling. This migration simplifies the asset compilation process and improves build performance.

## Detailed Steps

1. **Add Bun dependency** to `mix.exs`:
   ```elixir
   {:bun, "~> 1.5", runtime: Mix.env() == :dev}
   ```

2. **Remove old dependencies** from `mix.exs`:
   - Remove `:esbuild`
   - Remove `:tailwind`

3. **Configure Bun** in `config/config.exs`:
   ```elixir
   config :bun,
     version: "1.1.22",
     js: [
       args: ~w(build js/app.js --outdir=../priv/static/assets --external /fonts/* --external /images/*),
       cd: Path.expand("../assets", __DIR__),
       env: %{}
     ],
     css: [
       args: ~w(build css/app.css --outdir=../priv/static/assets --external /fonts/* --external /images/*),
       cd: Path.expand("../assets", __DIR__)
     ]
   ```

4. **Update aliases** in `mix.exs`:
   ```elixir
   "assets.setup": ["bun.install --if-missing"],
   "assets.build": ["bun js", "bun css"],
   "assets.deploy": [
     "bun js --minify",
     "bun css --minify",
     "phx.digest"
   ]
   ```

5. **Update development watchers** in `config/dev.exs`:
   ```elixir
   watchers: [
     bun: {Bun, :install_and_run, [:js, ~w(--watch)]},
     bun: {Bun, :install_and_run, [:css, ~w(--watch)]}
   ]
   ```

6. **Update package.json** in `assets/` to ensure Tailwind CSS is included as a dependency

7. **Run installation**:
   ```bash
   mix deps.get
   mix bun.install
   ```

8. **Test the setup**:
   ```bash
   mix assets.build
   mix phx.server
   ```