# Dockerfile para Laravel (PHP 8.2)
FROM php:8.2-fpm

# Instala dependências do sistema
RUN apt-get update && apt-get install -y \
    git curl zip unzip libpq-dev libzip-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Instala Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Cria e define diretório de trabalho
WORKDIR /var/www

# Copia arquivos da aplicação (será usado após montar volume)
COPY . /var/www

# Define permissões (importante para o Laravel rodar corretamente)
RUN chown -R www-data:www-data /var/www && chmod -R 755 /var/www

EXPOSE 9000
CMD ["bash", "start.sh"]
