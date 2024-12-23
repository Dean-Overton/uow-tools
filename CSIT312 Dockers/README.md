# CSIT312 Dockers

Sick of using VMs for your assessments and labs? This repository contains a collection of Dockerfiles for various tools and services that are commonly used in CSIT312.

## Why use Docker over VM?

- **Lightweight**: Docker containers are significantly smaller than VMs, which means they are faster to download, start, and stop.
  Size Comparison: **2.5 GB (Docker) | 6.5 GB (VM)**
- **Consistent**: Docker containers are built from a Dockerfile, which is a text file that contains all the commands needed to build the container. This means that the container will always be built the same way, regardless of the host system.
- **Isolated**: Docker containers are isolated from the host system, which means that they cannot access the host system's files or network unless explicitly allowed.
- **Portable**: Docker containers can be easily moved between different systems, as long as the target system has Docker installed. Working with Mac, Windows, or Linux? No problem!

## How to get started

1. **Docker** is available for Windows, Mac, and Linux. You can download Docker Desktop from the official website: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. **Clone** this repository to your local machine:
3. **Build** the Docker image using the provided Dockerfile suitable for your needs.
   Available Dockerfiles:

- **Spark**: A standalone Apache Spark cluster with a master and worker node. \<csit312-spark>
- **Hadoop**: A standalone Apache Hadoop cluster with a master and worker node.
- **Hive**: A standalone Apache Hive server with a MySQL database.

_Commands:_

```bash
docker build -t <image-name> -f ./Dockerfile.pyspark .
```

4. **Run** the Docker container.

**_Commands:_**
_(To run docker)_

```bash
docker run -d -it csit312-spark
```

_(To Open New Terminal)_

```bash
docker ps
```

```bash
docker exec -it <container_id> /bin/bash
```
