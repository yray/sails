############################################################
# Dockerfile for Sane-stack to run sails.js API application
############################################################

FROM iojs:slim

MAINTAINER Yohanes Raymond <raymond@eyesimple.us>

RUN apt-get update && \
    apt-get install -y git

RUN npm install -g sails grunt bower sane-cli pm2 npm-check-updates
RUN mkdir /server

# Define mountable directories.
VOLUME ["/server"]

# Define working directory.
WORKDIR /server

# Expose ports.
EXPOSE 1337