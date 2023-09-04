FROM masakifujiwara1/noetic-cartographer:latest

SHELL ["/bin/bash", "-c"]

WORKDIR /home/user
ENV HOME /home/user

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Tokyo

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

COPY config/.bashrc $HOME/.bashrc
COPY config/.vimrc $HOME/.vimrc



