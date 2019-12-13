# laravel-docker-sample

Laravel動かす用のDocker環境です

## How to use

### Create New Laravel Project

1. `mv laravel-docker-sample YOUR_PROJECT_NAME`
2. `cd YOUR_PROJECT_NAME`
3. `cp env-example .env`
4. .envに値を書き込む
5. `mkdir YOUR_PROJECT_NAME`
6. `docker-compose up -d`
7. `make init-project`

### Use Current Laravel Project

1. `mv laravel-docker-sample YOUR_PROJECT_NAME`
2. `cd YOUR_PROJECT_NAME`
3. `cp env-example .env`
4. .envに値を書き込む
5. laravelのプロジェクトをルートディレクトリに配置します
6. `docker-compose up -d`

## Special Thanks!

- https://github.com/saboyutaka/laravel-sample
