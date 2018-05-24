# Dockerize

This is a quick project to whip up a dockerized container for a friend in both `Dockerfile` and `docker-compose.yml`.

The Node.js app starts on port `3000` in the container and is mapped to port `3001` on the host.

## Scripts

In the `scripts/` directory, the following scripts exist:

* `dockerup.sh` - uses `docker-compose.yml` which uses `Dockerfile` to build an image. See `docker-compose.yml.orig` to show how to create a docker container without the `Dockerfile`. 
* `dockerbuild.sh` - uses `Dockerfile` to build an image
* `dockerdel.sh` - removes images with the name
* `dockerrun.sh` - runs the docker image in detached mode
* `dockershell.sh` - runs the docker image and executes `bash` inside the shell

The aforementioned scripts should be run in root directory of the repo or the docker files will not be found. See below in the Usage section.

## Usage

### Build

    $ ./scripts/dockerup.sh
    Recreating docker_node_1 ... done

### Hit on Linux

    $ curl localhost:3001
    BALLS

### Hit on OSX

On OSX, I used the [Docker tutorial](https://pilsniak.com/how-to-install-docker-on-mac-os-using-brew/) by Marcin Pilśniak and learned that you cannot use localhost to hit the app. Instead, docker-machine runs docker containers on a separate IP.

Run this command to find the IP

    $ docker-machine ip default
    192.168.64.2
    $ curl localhost:3001
    curl: (7) Failed to connect to localhost port 3001: Connection refused
    $ curl 192.168.64.2:3001
    BALLS

## Linting

    $ npm i
    $ ./node_modules/.bin/dockerlint
    
    INFO: Dockerfile is OK.

