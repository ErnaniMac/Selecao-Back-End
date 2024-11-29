# API de Sistema de Comentários

#### Tecnologias
![Laravel](https://img.shields.io/badge/laravel-%23FF2D20.svg?style=for-the-badge&logo=laravel&logoColor=white)
![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)


### Este projeto trata-se de uma API de sistema de comentários.

[Leia o README do desafio proposto.](https://github.com/Betalabs/Selecao-Back-End/blob/master/README.md)


## Sumário

- [Requisitos de Instalação](#requisitos-de-instalação)
- [Instalação e Inicialização](#instalação-e-inicialização)
- [Tarefas do Desafio](#tarefas-do-desafio)
- [Modo de Usar](#modo-de-usar)
- [API Endpoints](#api-endpoints)
- [Banco de Dados](#banco-de-dados)
- [Erros Comuns de Inicialização](#erros-comuns-de-inicialização)

<br>

## Requisitos de Instalação

- Linux/WSL
- GIT
- Docker
- Docker compose
- Composer

<br>

## Instalação e Inicialização

### Instalação

#### Clone o repositório:
```bash
git clone https://github.com/ErnaniMac/Selecao-Back-End.git
```

### Inicialização

#### Para executar o Docker e montar os containers abra o terminal na pasta do projeto [/Selecao-Back-End](#) e execute o script:
```bash
./setup.sh
```

<br>

## Tarefas do Desafio

```
```

<br>

## Modo de Usar

```
```

<br>

## API Endpoints

#### A API fornece os seguintes endpoints:

```
```

<br>

## Banco de Dados
#### Este projeto usa [MySQL](https://www.mysql.com/) como banco de dados. O arquivo de backup está disponível em:
[/Selecao-Back-End/database/backup_db_syscomment/backup_db_syscomment.sql](#)

<br>

## Erros Comuns de Inicialização

#### # ERROR: for 'mysql' Cannot start service 'db': Ports are not available: listen tcp 0.0.0.0:3307: bind: address already in use.
#### Solução: Modifique a porta do serviço 'db' do docker-compose.yml. Em "3307:3306" apenas muda para uma porta host que não esteja em uso.
```
db:
    image: mysql:8.0
    container_name: mysql
    env_file:
      - .env
    environment:
      MYSQL_DATABASE: ${DB_DATABASE}
      MYSQL_ROOT_PASSWORD: ${DB_PASSWORD}
    ports:
      - "3307:3306"
    volumes:
      - mysql_data:/var/lib/mysql
    networks:
      - app-network
```
