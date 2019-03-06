![Gearbox 3.9](https://img.shields.io/badge/Gearbox-3.9-green.svg)
![Gearbox 3.8](https://img.shields.io/badge/Gearbox-3.8-green.svg)
![Gearbox 3.7](https://img.shields.io/badge/Gearbox-3.7-green.svg)
![Gearbox 3.6](https://img.shields.io/badge/Gearbox-3.6-green.svg)
![Gearbox 3.5](https://img.shields.io/badge/Gearbox-3.5-green.svg)
![Gearbox 3.4](https://img.shields.io/badge/Gearbox-3.4-green.svg)
![Gearbox 3.3](https://img.shields.io/badge/Gearbox-3.3-green.svg)

![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# Gearbox reference Docker Container for Gearbox
This is the repository for the Gearbox reference Docker container implemented for [Gearbox](https://github.com/gearboxworks/gearbox).
It currently provides versions 3.9 3.8 3.7 3.6 3.5 3.4 3.3


## Supported tags and respective Dockerfiles

`3.9` _([3.9/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.9/Dockerfile))_
`3.8`, `latest` _([3.8/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.8/Dockerfile))_
`3.7` _([3.7/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.7/Dockerfile))_
`3.6` _([3.6/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.6/Dockerfile))_
`3.5` _([3.5/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.5/Dockerfile))_
`3.4` _([3.4/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.4/Dockerfile))_
`3.3` _([3.3/Dockerfile](https://github.com/gearboxworks/gearbox-docker/blob/master/3.3/Dockerfile))_


## Using this container.
If you want to use this container as part of Gearbox, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/gearbox/gearbox/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/gearbox/repository/docker/gearbox/gearbox/]


### Setup from Docker Hub
A simple `docker pull gearbox/gearbox` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name gearbox-3.8 --restart unless-stopped --network gearboxnet gearbox/gearbox:3.8`

stop - Stop a Docker container.

`docker stop gearbox-3.8`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name gearbox-3.8 --network gearboxnet -p 9970:9970  gearbox/gearbox:3.8`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name gearbox-3.8 -i -t --network gearboxnet -p 9970:9970  gearbox/gearbox:3.8 /bin/bash`

rm - Remove the Docker container.

`docker container rm gearbox-3.8`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/gearbox-docker.git`


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


