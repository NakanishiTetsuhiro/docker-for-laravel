build:
	docker-compose run --rm php composer install
	docker-compose run --rm php php artisan migrate:fresh --seed
	docker-compose run --rm yarn install
	docker-compose run --rm yarn run dev

db:
	docker-compose run --rm php php artisan migrate:fresh --seed

testing:
	docker-compose run --rm php ./vendor/bin/phpunit

clear:
	docker-compose run --rm php php artisan cache:clear
	docker-compose run --rm php php artisan config:clear

tinker: ## Run tinker
	docker-compose run --rm php php artisan tinker

composer: ## Entry for Composer command
	docker-compose run --rm php composer install

ide-helper: ## Make ide-helper files
	docker-compose run --rm php php artisan ide-helper:generate
	docker-compose run --rm php php artisan ide-helper:models -N
	docker-compose run --rm php php artisan ide-helper:meta

yarn-dev: ## Entry for yarn command
	docker-compose run --rm yarn run dev

yarn-watch: ## Run yarn watch
	docker-compose run --rm yarn run watch

route:
	docker-compose run --rm php php artisan route:list

