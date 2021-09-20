# first_docker_project

Hi! This project is part of the study of the docker stack for deploying applications in one of the well-known IT company.

This repository is in the alpha release stage and is not intended for production

Environments of docker-compose.yml:

    for PostgreSQL:

```
      POSTGRES_USER: postgres # -- username postgres
      POSTGRES_PASSWORD: password # -- password postgres
      POSTGRES_DB: userdb # -- name of the create database. 
      #If you do not want to create a database, then delete the line
      
```

    for Redis:

```
       REDIS_PASSWORD: qwerty # -- password for redis
```

## Warning!

The port for redis to the external Internet is specified. This is done solely to check the performance of the microservice. It is necessary to comment out or delete the line indicating the port.

it was:

```
    ports:
      - 6379:6379
```

has become:

```
    #ports:
      #- 6379:6379
```

### other settings:

The nginx settings are located in the project root (nginx. conf)

## Deploy:

```
docker-compose build
docker-compose up -d
```
