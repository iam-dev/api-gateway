# API Gateway

## Description

API Gateway using Express Gateway
see also:
http://techyugadi.com/express_gateway_egcompose_1.html

## Dependency:

* Node >= 10.16.0
* MongoDB >= 4.0

## Run Docker

1. Docker Compose
```bash
$ docker-compose up -d
```
2. Create Admin User
```bash
$ cd script
$ cp admin.sh.example tmp/admin.sh
$ chmod a+x tmp/admin.sh
$ ./tmp/admin.sh
```
## Stop Docker
```bash
$ docker-compose down 
```

## Remove Docker services
```bash
$ cd script
$ cp remove-docker-services.sh.example tmp/remove-docker-services.sh
$ chmod a+x tmp/remove-docker-services.sh
$ ./tmp/remove-docker-services.sh
```

> Depends on installation, you may need to use `sudo`
