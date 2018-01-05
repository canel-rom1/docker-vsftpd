# docker-vsftpd
A container Docker for the FTP server: vsFTPd. 

## Getting started
To run the container:
```bash
$ make run
```
With the parameters:
```bash
$ make run port=21
```
To connect on the container:
```bash
$ make monitor
```
To stop the container
```bash
$ make stop
```
To delete the container:
```bash
$ make rm
```

## Build an image
To build your own image:
```bash
$ make build
```
With the parameters:
```bash
$ make build prefix=canelrom1 name=vsftpd tag=1.0
```
To clean docker images:
```bash
$ make clean
```
