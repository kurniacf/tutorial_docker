# Docker Tutorial

## List of Contents
- [Basic Concepts](#basic-concepts)
    - [1. Run Simple Container](#1-run-simple-container)
    - [2. Basic Commands container](#2-basic-commands-container)
    - [3. Docker Run](#3-docker-run)
    - [4. Running Server Container](#4-running-server-container)
    - [5. Run Nextcloud Image](#5-run-nextcloud-image)
    - [6. Using Volume](#6-using-volume)
- [Create Docker Image](#create-docker-image)
    - [1. Simple Image](#1-simple-image)


## Basic Concepts
### 1. Run Simple Container
```bash
docker run hello-world
```
<img src="https://user-images.githubusercontent.com/70510279/212332306-f375d815-22db-44fc-8f56-a53ade534c38.png" width="300"/>

### 2. Basic Commands container
```bash
docker ps -a
```
<img src="https://user-images.githubusercontent.com/70510279/212333620-a8f70c8e-4f24-4f50-a7d5-428cfa365f06.png" width="500"/>

</br>

try running the command in the code for further results

### 3. Docker Run
```bash
docker run alpine printenv
```

<img src="https://user-images.githubusercontent.com/70510279/212334092-7e5c4acf-a685-4b82-bc83-36e14c32d4f6.png" width="300"/>

</br>

try running the command in the code for further results

### 4. Running Server Container
```bash
docker run alpine ping www.docker.com
```

<img src="https://user-images.githubusercontent.com/70510279/212334544-3ae164e7-de59-4eef-8aad-b10cc50c40ad.png" width="300"/>

```bash
docker run -d alpine ping www.docker.com
```

<img src="https://user-images.githubusercontent.com/70510279/212334824-f94551f2-f809-429d-a76b-fd6b5762a6ef.png" width="300"/>

### 5. Run Nextcloud Image
```bash
docker run -d -p 8086:80 nextcloud
```
And run in `http://localhost:8086/`. See the result </br>
<img src="https://user-images.githubusercontent.com/70510279/212335839-deeb33a0-57c7-4ebb-845b-3e2151260ba7.png" width="500"/>

### 6. Using Volume 
```bash
docker run -d mysql:5.7
```

## Create Docker Image

### 1. Simple Image
Dockerfile
```Dockerfile
FROM ubuntu:20.04

CMD ["echo", "Halo Dunia"]
```

Running Dockerfile in Terminal
```bat
docker build -t halo .
docker run --rm halo
docker rmi halo
```

<img src="https://user-images.githubusercontent.com/70510279/212456867-2ca1496e-7c41-4ebe-a5ce-6f797ae442e3.png" width="500"/>

### 2. Image Include File
Prepare file for upload. In my example using HTML
```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tutorial Docker</title>
        <meta content="text/html; charset=utf-8" />
    </head>
    <body>
        <h1>Halo Dunia!!</h1>
        <p>Ini adalah container</p>
    </body>
</html>
```
```Dockerfile
FROM ubuntu:20.04

COPY index.html /usr/share/nginx/html
```
And running in terminal
```bat
docker build -t webserver .
docker run --rm -it -p 8082:80 webserver
```

### 3. Build Image Simple Compute
Dockerfile
```Dockerfile
FROM node:11-alpine

COPY compute.js .

CMD node compute.js
```
area.js
```js
var radius = 2.0;
var area = Math.pow(radius, 2) * Math.PI;
console.log(
    `Area of a ${radius} cm disk:
    ${area} cm²`
);
```
run.bat
```bat
docker build -t jsimage .
docker run --rm jsimage
```
And run to see result </br>
<img src="https://user-images.githubusercontent.com/70510279/212462583-1de97d99-f962-4390-9302-f04866a063c1.png" width="200"/>

### 4. Tags
In Docker, a tag is a label that is applied to a Docker image in a repository. Tags are used to identify and organize different versions of an image. For example, an image may have a tag of "latest" for the most recent version, and older versions may have tags such as "1.0" or "2.0". When pulling or running an image from a repository, you can specify the tag to use, allowing you to use specific versions of the image. By default, when you pull an image, Docker will use the "latest" tag if one is not specified.
```bash
docker build -t halo:1.0 .
```

### 5. Image Parametererized
Dockerfile
```Dockerfile
FROM node:11-alpine

ENV diameter=4.0

COPY compute.js .

CMD node compute.js
```
run.sh
```bash
docker build -t jsparam .

# Change the value of the diameter variable to 5.0
docker run --rm jsparam
docker run --rm -e diameter=5.0 jsparam
```

