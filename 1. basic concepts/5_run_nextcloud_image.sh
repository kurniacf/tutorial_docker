# Run nextcloud image
docker run -d -p 8086:80 nextcloud

# Stop nextcloud container
docker stop <container_id>

# Delete nextcloud container
docker rm <container_id>

