# DOCKER ENV
- [ ] Get started
- [ ] Project 01: Ubuntu 14.04 Nodejs
- [ ] Project 02: Centos 6x Nodejs
- [ ] Project 03: Ubuntu 14.04 PHP
- [ ] Project 04: Centos 6x PHP
- [ ] Project 05: Ubuntu 16.04 Nodejs
- [ ] Project 06: Centos 7x Nodejs
- [ ] Project 07: Ubuntu 16.04 PHP
- [ ] Project 08: Centos 7x PHP

## Get started
### Install Docker
- [x] MAC Install
 - Tutorial https://docs.docker.com/docker-for-mac/
- [ ] WIN Install
 - https://docs.docker.com/engine/installation/windows/
- [ ] Linux Install
 - Docker CentOS https://docs.docker.com/engine/installation/linux/centos/

## Project 01: Ubuntu 14.04 Nodejs
### Dockerfile
```
FROM ubuntu:14.04

# path
RUN export PYTHON=python3

# Dependencies
RUN apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - \
    && apt-get update \
    && apt-get install -y git nodejs \
    && apt-get install -y mysql-client python make g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g pm2

# Define projects working directory
RUN mkdir -p /home/ubuntu/projects
WORKDIR /home/ubuntu/projects

# Expose
EXPOSE 9000

# Project
# CMD pm2 start --no-daemon /home/ubuntu/projects/

```

### Docker Compose

## Project 04: Centos 6x PHP

## Reference
- Docker https://www.docker.com/
- Homebrew Cask https://github.com/caskroom/homebrew-cask
