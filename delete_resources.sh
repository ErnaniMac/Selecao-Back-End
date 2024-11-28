#!/bin/sh

# Parar os containers em execucao
sudo docker-compose stop || true

# Remover conteineres se eles existirem
sudo docker rm -f laravel-app mysql || true

# Remover containers, volumes, imagens deste projeto
sudo docker-compose down -v --rmi all --remove-orphans
