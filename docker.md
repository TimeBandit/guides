### 20,000 ft view 
Docker tools and services are built so that they talk to each other. For example, you can:

1. Configure a set of EC2 servers with Docker Machine.
2. Then you can make a cluster of those EC2 servers using Docker Swarm.
3. Finally, you can deploy your apps into the cluster using Docker Compose.

Docker file best practives -> http://tinyurl.com/hecovro

### GOLDEN DOCKER FILE
FROM node:4.3.2

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5

ENV HOME=/home/app

USER app
WORKDIR $HOME/chat

### CONTAINERS

## Create and Run
# build an image from Dockerfile
docker build -t [tagname] [Dockfile-location]
# run an image with an exposed port
docker run -p [host-port]:[exposed-container-port] [tagname]
# run an image in the background
docker run -d -p 4000:80 friendlyhello
# stop a container
docker stop [container-id|name]

## Tag and Upload an image & use it somewhere else
docker tag image [timebandit]/[repository]:[tag]
docker push [timebandit]/[repository]:[tag]
docker run -p 4000:80 [timebandit]/[repository]:[tag]

### Interactively install inside Docker
docker run -it ubuntu bash

# add a user
adduser [new-username]
usermod -aG sudo [new-username]
su - [new-username]

# update the image
apt-get update
apt-get install curl

# install meteor
curl https://install.meteor.com/ | sh

### VOLUMES
# create a volume
docker volume create --name hello
# mount a volume
docker run -d -v hello:/container/path/for/volume container_image my_command
# list all volumes
docker volume ls
# identify dangling volumes
docker volume ls -f dangling=true

### MISC

## re-enter the container
# find docker id
docker ps
# attach
docker attach 3378689f2069
# stop the container
exit
# delete all containers
docker rm (docker ps -a -q)
# delete all images
docker rmi (docker images -q)

## Save changes made to an container
# detach from running container first
Ctrl-p + Ctrl-q [commit changes]
# find the constiner id
docker ps -l
# Create a new image from a container's changes
docker commit 5976e4ae287c ubuntu-nginx

### Using a local dev container

Use /home/timebandit/Documents/howtos/Dockerfile
to create base image

Run
`docker run -it -p 80:80 -v /home/timebandit/Documents/code/sandbox/appskeleton:/home/dev -v /home/dev/node_modules -w /home/dev sandbox bash`

Pointing to the correct directory you want to mount

### SERVICES (Composing)

# Runs a one-time command against a service
docker-compose run app bash
## running
docker swarm init
docker stack deploy -c [compose-file] [app-name]
# see a list of apps containers
docker stack ps [app-name]

## stopping
docker stack rm [app-name]
# list the swarm manager
docker node ls
# take down swarm
docker swarm leave --force

### SWARMS (running on multiple machines)
Docker is run in 'single-host'/'swarm' mode.
A swarm is a cluster of phys/virt machines running docker.
Each machine is called a 'node' A 'swarm manager' executes commands on the 
cluster

## create a cluster of 2 machines
One will be manager, other a worker
# create a vm
docker-machine create --driver virtualbox [vm-name]
# list your vms
docker-machine ls
# send commands to a vm
docker-machine ssh [vm-name]
# make one a manager
docker-machine ssh myvm1 "docker swarm init"
# add other a worker
docker-machine ssh myvm2 "docker swarm join \
    --token SWMTKN-1-25t08jbi3dw1d5cdty9y509nz8rrvxqb0pxpnrkchly8achto4-d3z4meeeozn9l48yeo3ncv4gb\
    192.168.99.100:2377"
# view your cluster via the manager
docker-machine ssh myvm1 "docker node ls"

## Deploying App on a cluster
# copy your docker compose file to your manager
docker-machine scp docker-compose.yml myvm1:~
# get the manager to deploy the app
docker-machine ssh myvm1 "docker stack deploy -c docker-compose.yml getstartedlab"
# view the container distributed amongst the machines
docker-machine ssh myvm1 "docker stack ps getstartedlab"

## Accessing the cluster
docker-machine ls

## cleanup
# tear down the stack
docker-machine ssh myvm1 "docker stack rm getstartedlab"
# remove nodes from a swarm (remove capacity)
docker-machine ssh myvm2 "docker swarm leave"

### STACKS
A stack is a group of interrelated services that share dependencies, and can be orchestrated and scaled together. Stacks allow you to make multiple services relate to each other, and run them on multiple machines.