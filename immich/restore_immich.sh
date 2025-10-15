#!/bin/bash
cd ~/homelab-services/immich
docker compose down -v  
sudo rm -rf /home/vzkz-server/immich-postgres
docker compose pull
docker compose create      
docker start immich_postgres
sleep 10 
# Check the database user if you deviated from the default:
gunzip --stdout "/home/vzkz-server/dummy/dump.sql.gz" \
| sed "s/SELECT pg_catalog.set_config('search_path', '', false);/SELECT pg_catalog.set_config('search_path', 'public, pg_catalog', true);/g" \
| docker exec -i immich_postgres psql --dbname=postgres --username=postgres
# [TODO] At this point, immich-library is already there
docker compose up -d 
