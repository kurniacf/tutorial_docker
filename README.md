# Docker Tutorial

## List of Contents
- [Basic Concepts](#basic-concepts)
    - [1. Run Simple Container](#1-run-simple-container)
    - [2. Basic Commands container](#2-basic-commands-container)
    - [3. Docker Run](#3-docker-run)
    - [4. Running Server Container](#4-running-server-container)
    - [5. Run Nextcloud Image](#5-run-nextcloud-image)
    - [6. Using Volume](#6-using-volume)
- 



## Basic Concepts
### 1. Run Simple Container
```
docker run hello-world
```
<img src="https://user-images.githubusercontent.com/70510279/212332306-f375d815-22db-44fc-8f56-a53ade534c38.png" width="300"/>

### 2. Basic Commands container
```
docker ps -a
```
<img src="https://user-images.githubusercontent.com/70510279/212333620-a8f70c8e-4f24-4f50-a7d5-428cfa365f06.png" width="500"/>

</br>

try running the command in the code for further results

### 3. Docker Run
```
docker run alpine printenv
```

<img src="https://user-images.githubusercontent.com/70510279/212334092-7e5c4acf-a685-4b82-bc83-36e14c32d4f6.png" width="300"/>

</br>

try running the command in the code for further results

### 4. Running Server Container
```
docker run alpine ping www.docker.com
```

<img src="https://user-images.githubusercontent.com/70510279/212334544-3ae164e7-de59-4eef-8aad-b10cc50c40ad.png" width="300"/>

```
docker run -d alpine ping www.docker.com
```

<img src="https://user-images.githubusercontent.com/70510279/212334824-f94551f2-f809-429d-a76b-fd6b5762a6ef.png" width="300"/>

### 5. Run Nextcloud Image
```
docker run -d -p 8086:80 nextcloud
```
And run in `http://localhost:8086/`. See the result </br>
<img src="https://user-images.githubusercontent.com/70510279/212335839-deeb33a0-57c7-4ebb-845b-3e2151260ba7.png" width="500"/>

### 6. Using Volume 
```
docker run -d mysql:5.7
```

## 