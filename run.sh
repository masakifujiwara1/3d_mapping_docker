#!/bin/bash

eval "docker container run --network host --gpus all -it --name noetic-cartographer -e DISPLAY=$DISPLAY --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v $PWD/docker_share:/home/host_files --privileged masakifujiwara1/noetic-cartographer:latest bash"
