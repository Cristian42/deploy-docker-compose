build:
	docker-compose build

up:
	docker-compose up -d

collectstatic:
	test -d .env || virtualenv .env
	.env/bin/pip install -Ur requirements.txt
	.env/bin/python manage.py collectstatic --no-input

