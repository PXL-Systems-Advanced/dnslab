# Systems Advanced: DNS Server Lab

This repository contains the configuration files to set up a lab environment for practicing DNS Server with Docker containers.

The lab consists of one container and a compose file to set up the environment.

## Setup Instructions

### Pre-requisites

- [Docker & Docker Compose](https://www.docker.com/get-started)
- [Git](https://github.com/git-guides/install-git)

### Clone the Repository

Clone this repository to your local machine:

```sh
git https://github.com/PXL-Systems-Advanced/dnslab.git
cd dnslab
```

### Build and Run the Containers

Use Docker Compose to build the Docker image, create a bridge network (docker-dns_mynetwork), and start the container (dns_server).

```sh
docker compose up -d --build
```

Check the status of the containers:

```sh
docker ps
```

You should see the `dns_server` container running.

```output
CONTAINER ID   IMAGE            COMMAND                  CREATED          STATUS          PORTS                                    NAMES
xxxxxxxxxxxx    docker-dns-dns   "named -g -c /etc/bi…"   35 seconds ago   Up 34 seconds   0.0.0.0:53->53/tcp, 0.0.0.0:53->53/udp   dns_server
```

The bridge network should also be created:

```sh
docker network ls
```

```output
xxxxxxxxxxxx   docker-dns_mynetwork   bridge    local
```

## Access the Container

```bash
docker exec -it dns_server sh
```

## Stop and Remove the Containers

In the folder where the `docker-compose.yml` file is located, run:

```sh
docker compose down
```

```output
[+] Running 2/2
 ✔ Container dns_server          Removed               0.3s
 ✔ Network docker-dns_mynetwork  Removed               0.1s
```
