# 🚀 Getting started

## Description

Boilerplate Strapi

- Postgresql database
- Docker
- Share Docker Image for multi environments with Docker Hub: Frontend, Backend,
- Available environments: Development (Frontend, Backend), Production

## Environment variables

Change setup Database

### For Postgresql image

| Variable          | Description                             |
| ----------------- | --------------------------------------- |
| POSTGRES_PASSWORD | Password for Postgresql database        |
| POSTGRES_USER     | Username for Postgresql database        |
| POSTGRES_DB       | Database initial of Postgresql database |
| PGDATA            | Path save data of PG                    |

### For Strapi Image

| Variable          | Description                                                                  |
| ----------------- | ---------------------------------------------------------------------------- |
| DATABASE_HOST     | Hostname of Postgresql database if internal container docker is name service |
| DATABASE_PORT     | Port of Postgresql database                                                  |
| DATABASE_NAME     | Name of database want connect                                                |
| DATABASE_USERNAME | User name connect                                                            |
| DATABASE_PASSWORD | Password connect                                                             |

## For development environment

Setup available Postgresql run:

```shell
docker-compose up -d db
```

### Development local

Requirement install package NodeJS

```shell
yarn install
```

`develop` mode

Mode setup Content Builder Type, v.v

```shell
yarn develop
```

Of run with Docker

```shell
docker-compose up -d --build dev
```

### Development environment for Frontend Developer with share image with Docker Hub

Set image of image share in docker-compose corresponding before run

```shell
docker-compose up -d --build fe
```

Or setup postgres available run docker-compose pull from Docker Hub

```shell
docker-compose up -d fe_db
```

Complete! run

```shell
yarn start
```

### For production

Setup environment variable correct before run

`production` mode local

```shell
yarn start
```

run with Docker setup environment on docker-compose file

```shell
docker-compose up -d --build prod
```

### Publish share image on Docker Hub

Requirement Postgresql with available data & pg_dump tool run

```shell
./scripts/db_build.sh DATABASE_HOST DATABASE_PORT DATABASE_USERNAME DATABASE_NAME IMAGE_TAG
```
