#!/bin/bash
echo "Beginning to Run Migration"
docker exec -it 'manga_app' rake neo4j:migrate --trace
docker exec -it 'manga_app' rake webpacker:install