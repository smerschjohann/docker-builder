FROM ubuntu:latest
RUN apt-get update && apt-get install git openjdk-11-jdk-headless && apt-get clean

RUN echo "Adding user and group" \
    && groupadd --system --gid 1000 builder \
    && useradd --system --gid builder --uid 1000 --shell /bin/bash --create-home builder \
    && chown --recursive builder:builder /home/builder \

WORKDIR /home/builder
