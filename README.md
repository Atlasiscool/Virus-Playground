# Virus Playground
Little playground to have fun running simple viruses and make them spread across containers.
## Requirements
- docker installed
- docker-compose installed
## Usage
```bash
# to start the whole infrastructure
docker-compose up

# to list running containers
docker ps
# to access a container
docker exec -it [container_name] bash

# once inside the container to become a simple user and start having fun
su test
```

You can copy your virus to one of the containers
```bash
# docker cp [OPTIONS] CONTAINER:SRC_PATH DEST_PATH
docker cp [container_name]:./my_virus /somewhere/on/the/container/my_virus
```
And start the spread of the virus
```bash
docker exec [container_name] /somewhere/on/the/container/my_virus
```

## Status
To check the infection status of all container running on your system
```bash
bash detail-infection.sh
```
