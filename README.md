Installation
============

Project installation
--------------------


To install the project, you must at first clone both the code repository and the provisioning repository:
```
git clone git@github.com:Frozox/HackathonESGI.git
```

Then, this project can be installed by running the install local env:
```
# In all environments, the following files are loaded if they exist,
# the latter taking precedence over the former:
#
#  * .env                contains default values for the environment variables needed by the app
#  * .env.local          uncommitted file with local overrides
#  * .env.$APP_ENV       committed environment-specific defaults
#  * .env.$APP_ENV.local uncommitted environment-specific overrides
#
# Real environment variables win over .env files.
#
# DO NOT DEFINE PRODUCTION SECRETS IN THIS FILE NOR IN ANY OTHER COMMITTED FILES.
#
# Run "composer dump-env prod" to compile .env files for production use (requires symfony/flex >=1.2).
# https://symfony.com/doc/current/best_practices.html#use-environment-variables-for-infrastructure-configuration

###> symfony/framework-bundle ###
APP_ENV=dev
APP_SECRET=1d459742e4eedfd698fea63db5cc808c
###< symfony/framework-bundle ###

###> doctrine/doctrine-bundle ###
# Format described at https://www.doctrine-project.org/projects/doctrine-dbal/en/latest/reference/configuration.html#connecting-using-a-url
# IMPORTANT: You MUST configure your server version, either here or in config/packages/doctrine.yaml
#
APP_ENV=dev
APP_SECRET=1d459742e4eedfd698fea63db5cc808c

MAILER_DSN=smtp://mailcatcher:25
MAILER_ADMIN=account@wiredbeauty.com

DB_USER=hackathon
DB_NAME=hackathon
DB_PASSWORD=hackathon
DB_HOST=hackathon-mariadb:3306
DB_SRV_VERSION=mariadb-10.7.1
DATABASE_URL="mysql://${DB_USER}:${DB_PASSWORD}@${DB_HOST}/${DB_NAME}"
# DATABASE_URL="sqlite:///%kernel.project_dir%/var/data.db"
# DATABASE_URL="postgresql://symfony:ChangeMe@127.0.0.1:5432/app?serverVersion=13&charset=utf8"
###< doctrine/doctrine-bundle ###
```

Run the docker 

```
docker compose build --no-cache
docker compose --env-file .env.local up -d 
```

Install dependencies in local repository

```
composer install
npm install
```
Install database 

```
docker compose exec {your container name} php bin/console d:m:m
docker compose exec {your container name} php bin/console d:s:u
```

Install assets inside docker container 

```
docker compose exec {your container name} php bin/console assets:install
```

Back-office route is /admin

ID : admin@wb.com
PW : password