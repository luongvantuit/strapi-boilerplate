set -e

DATABASE_HOST="${1:-"localhost"}"
DATABASE_PORT="${2:-5432}" 
DATABASE_USERNAME="${3:-"admin"}"
DATABASE_NAME="${4:-"dev"}"
IMAGE_TAG="${5:-"luongvantuit/pg"}"

shift

# -h hostname
# -p port 
# -U username
# -W has password <> -w\
pg_dump -h $DATABASE_HOST -p $DATABASE_PORT -U $DATABASE_USERNAME -W $DATABASE_NAME > schema.sql

if [ $? -eq 0 ]
then 
# Required build Docker Compose
docker-compose build pg

# Publish to Docker Hub
# TAG
docker push $IMAGE_TAG
fi
