# django-template-cookiecutter

A personal Django project template with a full local dev and production stack baked in.

## What you get

- Django 5.x + django-environ for settings
- Docker Compose: Django/Gunicorn + PostgreSQL + Redis + Nginx
- pre-commit hooks: ruff (lint + format), detect-secrets, yaml/merge checks
- Makefile shortcuts
- GitHub repo auto-created on generation

## Requirements

Make sure these are installed on your machine before running:

- `cookiecutter` — `uv tool install cookiecutter`
- `pre-commit` — `uv tool install pre-commit`
- `detect-secrets` — `uv tool install detect-secrets`
- `gh` — `brew install gh` + `gh auth login`
- `docker` — Docker Desktop or OrbStack

## Usage
```bash
cookiecutter gh:notanth/django-template-cookiecutter
```

You'll be prompted for:
- **project_name** — human readable e.g. "My Blog"
- **project_slug** — auto-generated, just hit enter
- **description** — one liner
- **github_visibility** — private (default) or public

After generation your project will be:
- Scaffolded locally at `~/code/<project_slug>`
- Git initialized with initial commit
- pre-commit hooks installed and passing
- GitHub repo created and pushed

## First steps after generation
```bash
cd <project_slug>
cp .env.example .env
# edit .env — set SECRET_KEY, database credentials
make up
make migrate
make createsuperuser
```

## Adding dependencies
```bash
uv add stripe
uv add django-allauth
uv add django-storages  # for Cloudflare R2 media/static files
```

## Common commands

| Command | Description |
|---|---|
| `make up` | Build and start all services |
| `make down` | Stop all services |
| `make logs` | Tail web logs |
| `make migrate` | Run migrations |
| `make shell` | Django shell |
| `make test` | Run tests |
| `make psql` | PostgreSQL shell |

## Stack

- Python 3.12 / Django 5.x
- PostgreSQL 16
- Redis 7
- Gunicorn + Nginx
- Docker Compose
- uv for package management
- Cloudflare R2 ready (see .env.example)
