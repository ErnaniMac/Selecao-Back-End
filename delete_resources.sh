#!/bin/sh

# Parar os containers em execucao
sudo docker-compose stop || true

# Remover conteineres se eles existirem
sudo docker rm -f php-apache mysql || true

# Remover containers, volumes, imagens deste projeto
sudo docker-compose down -v --rmi all --remove-orphans
