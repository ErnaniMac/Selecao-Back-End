# Usar a imagem base do PHP com FPM
FROM php:8.0-fpm

# Instalar dependências necessárias e extensões PHP
RUN apt-get update && \
    apt-get install -y git unzip libpq-dev libxml2-dev curl libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install pdo pdo_mysql gd

# Configurar o Git para permitir o diretório seguro
RUN git config --global --add safe.directory /var/www/html

# Instalar o Xdebug (se necessário)
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Baixar e instalar o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Definir diretório de trabalho
WORKDIR /var/www/html

# Copiar os arquivos da aplicação
COPY . .

# Ajustar permissões
RUN chown -R www-data:www-data /var/www/html && \
    chown -R www-data:www-data /var/www/html/storage && \
    chown -R www-data:www-data /var/www/html/bootstrap/cache

# Instalar dependências do Laravel
RUN composer install

# Expor a porta 8000
EXPOSE 8000

# Garantir execução como www-data
USER www-data

# Comando para iniciar o servidor Laravel
CMD ["sh", "-c", "php artisan key:generate --force && php artisan serve --host=0.0.0.0 --port=8000"]
