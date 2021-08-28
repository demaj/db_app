# DB-App

#### A django app, that uses postgres for DB. It is configured with docker, docker-compose.

## Getting Started

### From the root directory execute:
```bash
docker-compose up -d --build
```

### Then, we need to make migrations:
```bash
docker-compose exec web python /code/app/manage.py makemigrations accounts
docker-compose exec web python /code/app/manage.py migrate
```

### Create superuser
```bash
docker-compose exec web python /code/app/manage.py createsuperuser
```