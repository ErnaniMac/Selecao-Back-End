#!/bin/sh
    
# Parar os containers em execucao
sudo docker-compose stop || true

# Remover conteineres se eles existirem
sudo docker rm laravel-app mysql || true

# Executa e builda os containers em segundo plano
sudo docker-compose up --build -d

