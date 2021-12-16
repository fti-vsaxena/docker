# Docker- Docker implementation

# Installation
sudo apt install docker.io
docker --version

# Enabling docker
- sudo systemctl status docker /n
- sudo systemctl enable --now docker /n
- sudo docker run hello-world
- sudo docker images

# Creating a docker container
- docker run -it --name cont1 -v /dev/video0:/dev/video0 -v volume1 --privileged=true 29111997/gstream:latest /bin/bash
- docker run -it --name cont2 --volumes-from volume1 --privileged=true 29111997/gstream:latest /bin/bash

# Enter the container

- docker start cont1
- docker attach cont1
         OR
- docker exec -it cont1 bash

# Check the containers
- docker container inspect cont1

# Remove containers
- docker kill cont1
- docker rm cont1

# Remove all unused containers
- docker container prune

# Creating a network
- docker network create mynet

# Connecting containers through the network
- docker network connect mynet cont1
- docker network connect mynet cont2

# Checking the network
- docker network inspect mynet

# Creating a dockerfile for gstreamer from docker hub

FROM ubuntu:latest
RUN apt update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN  apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio -y

# Build image from dockerfile

- docker build image -t .


# Important links-

- https://github.com/mjhowell/gst-zeromq
- https://stackoverflow.com/questions/45772053/zeromq-failing-to-communicate-between-two-docker-containers
- https://www.tutorialworks.com/container-networking/
- https://github.com/rancavil/slurm-cluster/blob/devel/jupyter/Dockerfile
- https://www.digitalocean.com/community/questions/how-to-ping-docker-container-from-another-container-by-name



