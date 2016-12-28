#!/bin/sh

docker swarm init
docker pull olavgg/moinmoin-wiki
docker network create -d overlay mm_overlay_nw
docker service create --name mm_svc --network mm_overlay_nw --replicas 2 -p 443:443 -p 80:80  olavgg/moinmoin-wiki
docker service ls
docker service scale mm_svc=2
