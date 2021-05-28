prevent-execute:
	exit
up:
	docker-compose up -d
build:
	docker-compose build
build-force:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
ps:
	docker-compose ps
prepare-env:
	cp .env.example .env
laravel-prepare:
	docker-compose exec app composer update
	docker-compose exec app php artisan key:generate
	docker-compose exec app php artisan storage:link
	@make fresh
composer-install:
	docker-compose exec
app:
	docker-compose exec app bash
migrate:
	docker-compose exec app php artisan migrate
fresh:
	docker-compose exec app php artisan migrate:fresh --seed
seed:
	docker-compose exec app php artisan db:seed
rollback-test:
	docker-compose exec app php artisan migrate:fresh
	docker-compose exec app php artisan migrate:refresh
tinker:
	docker-compose exec app php artisan tinker
test:
	docker-compose exec app php artisan test
optimize:
	docker-compose exec app php artisan optimize
optimize-clear:
	docker-compose exec app php artisan optimize:clear
cache:
	docker-compose exec app composer dump-autoload -o
	@make optimize
	docker-compose exec app php artisan event:cache
	docker-compose exec app php artisan view:cache
cache-clear:
	docker-compose exec app composer clear-cache
	@make optimize-clear
	docker-compose exec app php artisan event:clear
setup-project:
	mkdir ./app
	mv .env.example .env
	composer create-project laravel/laravel ./app
	docker-compose build
