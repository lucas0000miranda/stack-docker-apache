# stack-docker-apache

This is fast-up environment server APACHE with PHP and MYSQL, using docker as builder.

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

##### By Dockerfile:
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

##### By Docker Compose (recommended) :

> **Note:** _You got to personalize the `docker-compose.override.yml` . If you are using Mac, it is recommended to change `- .:/application` to `- .:/application:cached` for the best performance. However, the default file will work out of the box._

Pull docker images:
```bash
docker-compose pull

docker-compose up -d (-d is for daemon, cleans the screen out)
```
> **Note:** _You should always look at the `Successfully built image_id` message to get the image id._

### Usage

Test the server:
```bash
$ curl localhost:8080
```

To run it on interactive mode:
```bash
$ docker exec -it your_container_name bash
```

> **Note:** _DO NOT RESTART APACHE. If you will the sistem will be gone._
