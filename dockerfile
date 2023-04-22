# # Use an official image of Ubuntu 20.04 as the base image
# FROM ubuntu:jammy as base
FROM cs130/devel:stable

# Set /usr/src/projects as the working directory
WORKDIR /usr/src/projects
VOLUME /usr/src/projects/hamsder_backend
COPY . /usr/src/projects/hamsder_backend

# # Install required packages and libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libboost-all-dev \
    libssl-dev \
    libmysqlcppconn-dev \
    pkg-config
