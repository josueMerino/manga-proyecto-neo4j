#!/bin/bash
echo "Beginning to Run Migration"
docker exec -it 'manga_app_1' rake neo4j:migrate