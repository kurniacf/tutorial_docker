docker build -t jsparam .

# Change the value of the diameter variable to 5.0
docker run --rm jsparam
docker run --rm -e diameter=5.0 jsparam