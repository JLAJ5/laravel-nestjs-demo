#!/bin/bash

# Aguarda o banco ficar disponível
until nc -z db 5432; do
  echo "Aguardando PostgreSQL iniciar..."
  sleep 2
done

# Instala dependências do Laravel
composer install

# Gera key
php artisan key:generate

# Roda migrations (caso tenha)
php artisan migrate

# Sobe o PHP-FPM
php-fpm
