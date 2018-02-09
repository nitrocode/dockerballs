# Dockerize

This is a quick project to whip up a dockerized container for a friend in both `Dockerfile` and `docker-compose.yml`.

The Node.js app starts on port `3000` in the container and is mapped to port `3001` on the host.

## Scripts

In the `scripts/` directory, the following scripts exist:

* `dockerbuild.sh` - uses `Dockerfile` to build an image
* `dockerup.sh` - uses `docker-compose.yml` to build an image
* `dockerdel.sh` - removes images with the name
* `dockerrun.sh` - runs the docker image in detached mode

## Usage

### Build

    $ ./scripts/dockerup.sh
    Recreating docker_node_1 ... done

### Hit

    $ curl localhost:3001
    BALLS

