FastAPI Template
=================

# Installation

* Search and replace `fastapi-template` with your project name.
* Download and install [uv](https://docs.astral.sh/uv/#installation)
* Install packages with `uv sync`
* Rename `.env.sample` to `.env` and fill in the required environment variables.

# Usage

## Development

```bash
docker compose up <service> # start the container(s)
docker compose down <service> # stop the container(s)
docker compose restart <service> # restart the container(s)
```

Visit [http://localhost:9100](http://localhost:9100) to access the API.

Database:

```bash
docker compose exec api uv run alembic revision --autogenerate -m <msg> # create a new migration
docker compose exec api uv run alembic upgrade head # run migrations
docker compose exec postgres psql -h localhost -p 5432 -U user -d fastapi_template_db
```

Add or remove a package
```bash
docker compose exec api uv add <package_name>
docker compose exec api uv sync

docker compose exec api uv remove <package_name>

docker compose exec api uv add <package_name> --dev # add a package as a development dependency
```

### Precommit

* Install [pre-commit](https://pre-commit.com/)
* Run `pre-commit install` to install hooks
* Pre-commit will run automatically before commit.
