up:
	docker compose up --build -d

down:
	docker compose down

logs:
	docker compose logs -f web

migrate:
	docker compose exec web uv run python manage.py migrate

makemigrations:
	docker compose exec web uv run python manage.py makemigrations

shell:
	docker compose exec web uv run python manage.py shell

createsuperuser:
	docker compose exec web uv run python manage.py createsuperuser

test:
	docker compose exec web uv run python manage.py test

collectstatic:
	docker compose exec web uv run python manage.py collectstatic --noinput

psql:
	docker compose exec db psql -U ${POSTGRES_USER} -d ${POSTGRES_DB}
