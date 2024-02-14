#!/bin/bash

cd {{docker_compose_dir}}

docker-compose pull

if docker-compose ps -q | xargs docker inspect -f {% raw %} '{{.Image}}' {% endraw %} | grep -q ":latest"; then
  echo "Changes detected. Updating containers..."
  docker-compose up -d
else
  echo "No changes detected."
fi

