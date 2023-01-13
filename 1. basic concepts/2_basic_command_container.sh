# View Active Containers in Local Machine
docker ps

# View All Containers 
docker ps -a

# View Specific Container
docker logs <container_id>
## example:
docker logs bef709433aad

# View Detail of Specific Container
docker inspect <container_id>
## example:
docker inspect bef709433aad

# Delete Specific Container
docker rm <container_id>
## example:
docker rm c39df1bb9c90