# stack-docker-apache

### Pre-requisites:

* Docker
* docker-compose

### About Docker

Install Docker for your platform.

* Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
* Windows: https://store.docker.com/editions/community/docker-ce-desktop-windows
* Linux: Please see your distributions package management system

#### Installation

First we need to clone the project.

```bash
cd ~/code # or whatever directory you keep your projects in

git@github.com:lucas0000miranda/stack-docker-apache.git
cd stack-docker-apache
```

##### By only Dockerfile:
```bash
docker build .
```

To see the image id:
```bash
docker images
```
```bash
docker run -d --publish 8080:80 your_image_id

```

##### By only Docker Compose:

> **Note:** _You got to personalize the `docker-compose.override.yml` . If you are using Mac, it is recommended to change `- .:/application` to `- .:/application:cached` for the best performance. However, the default file will work out of the box._

```bash
docker build .

docker run -d --publish 8080:80 your_image_id
```

Pull docker images:
```bash
docker-compose pull

docker-compose up -d (-d is for daemon, cleans the screen out)
```

### Usage

Test the server:
```bash
$ curl localhost:8080
```

To run it on interactive mode:
```bash
$ docker exec -it your_container_name bash
```
