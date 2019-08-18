#!/bin/bash
cp .env.example .env
composer update --no-plugins --no-scripts
php artisan key:generate
php artisan config:cache
php artisan vendor:publish --tag=laravel-pt-br-localization

php artisan serve --host=0.0.0.0