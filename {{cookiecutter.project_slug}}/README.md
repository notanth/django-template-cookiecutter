# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Setup
```bash
cp .env.example .env
# edit .env with your values
make up
make migrate
make createsuperuser
```

## Commands

| Command | Description |
|---|---|
| `make up` | Build and start all services |
| `make down` | Stop all services |
| `make logs` | Tail web logs |
| `make migrate` | Run migrations |
| `make shell` | Django shell |
| `make test` | Run tests |
| `make psql` | PostgreSQL shell |
