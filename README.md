# docker-vsftpd
A container Docker for the FTP server: vsFTPd. 

## Getting started
To run the container:
```bash
$ make 
```
To connect on the container:
```bash
$ make monitor
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
