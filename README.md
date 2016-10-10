# DOCKER ENV
- [ ] Get started
- [x] Project 01: Ubuntu 14.04 Nodejs
- [ ] Project 02: Centos 6x Nodejs
- [ ] Project 03: Ubuntu 14.04 PHP
- [x] Project 04: Centos 6x PHP
- [ ] Project 05: Ubuntu 16.04 Nodejs
- [ ] Project 06: Centos 7x Nodejs
- [ ] Project 07: Ubuntu 16.04 PHP
- [ ] Project 08: Centos 7x PHP

## Get started
### Dependencies
- Git
- Docker

### Install Git
- [ ] MAC install
- [ ] WIN install
- Linux install

### Install Docker
- [x] MAC Install
 - Tutorial https://docs.docker.com/docker-for-mac/
- [ ] WIN Install
 - https://docs.docker.com/engine/installation/windows/
- [ ] Linux Install
 - Docker CentOS https://docs.docker.com/engine/installation/linux/centos/

### Local Configuration
- Edit file /etc/hosts
`127.0.0.1 docker.dev`

## Project 01: Ubuntu 14.04 Nodejs
### Dockerfile
- https://github.com/lecaoquochung/docker/blob/master/ubuntu14-node/server/Dockerfile

### Docker Compose

## Project 04: Centos 6x PHP
### Dockerfile
- https://github.com/lecaoquochung/docker/blob/master/centos6-php/docker-compose.yml

### ENV
```
dbname: MYSQL_ENV_MYSQL_DATABASE
port: MYSQL_PORT_3306_TCP_ADDR
mysqluser: MYSQL_ENV_MYSQL_USER
mysqlpasword: MYSQL_ENV_MYSQL_PASSWORD
```

## Reference
- Docker https://www.docker.com/
- Homebrew Cask https://github.com/caskroom/homebrew-cask
