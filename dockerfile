# Use an official image of Ubuntu 20.04 as the base image
FROM ubuntu:jammy as base

# Install required packages and libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libboost-all-dev \
    libssl-dev \
    libmysqlcppconn-dev \
    pkg-config

