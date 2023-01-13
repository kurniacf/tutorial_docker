# Docker run server image
docker run alpine ping www.docker.com

# Docker run server image but behind the scene detail
docker run -d alpine ping www.docker.com

# View logs container with rules (--since, --until, --tail)
docker logs --since 2022-01-12 --until 2020-01-13 --tail 10 <container_id>