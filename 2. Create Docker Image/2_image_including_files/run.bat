docker build -t webserver .
docker run --rm -it -p 8088:80 webserver