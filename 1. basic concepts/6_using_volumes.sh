# Use mysql volume to store data
docker run -d mysql:5.7

# Use mysql volume to store data in host system
docker run -v /{my_dir}/dir:/var/lib/mysql -d mysql:5.7