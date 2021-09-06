# Climsoft Dockerized Database

## Introduction

[Climsoft](https://climsoft.org/) is a software suite for storing climatic data in a secure and flexible manner and for extracting useful information from the data. 

This repository handles running a dockerized instance of the Climsoft MariaDB with test data. A docker compose configuration for running a MariDB  container that serves as the main database for storing Climsoft Data

## Installation

### 1. Clone the Repository

```sh
git clone https://github.com/icpac-igad/climsoft-db.git
```

### 2. Create .env file 

To create a .env file at the root of the project execute:

```sh
cp .env.sample .env
```

The .env file expects the following Environment Variables:

|   Variable      | Description |
| ----------- | ----------- |
| MYSQL_DATABASE     | The database name       |
| MYSQL_USER   |  The main database user       |
| MYSQL_ROOT_PASSWORD   |  Password for the root user above       |
| MYSQL_PORT   |  External access port for the db       |
| MYSQL_PASSWORD   |  Password for the DB_USER above      |
| MARIADB_VERSION   |  MariaDB Server Version     |

### 3. Running the container

Docker Compose is used to configure the container. The main configuratuin is in the default `docker-compose.yml` file. 
The `.env` files contains most of the variables that should be kept secret especially for production deployments. This file should not for example be tracked with git.


To start the container, run:

`docker-compose up`

To run in the background, for example when in production:

`docker-compose up -d`

Subsequent restarts do not run the initdb commands since the database folder already exists. In this case, if you don't mind cleaning you volume and starting again afresh, run:

`docker-compose down -v`

The `-v` option will wipe the volumes linked to the container. Be cautious!


