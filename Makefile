prefix ?= canelrom1
name   ?= vsftpd
tag    ?= $(shell date +%y.%m.%m)

all: run

run:
	docker run -d --name $(name) $(prefix)/$(name):latest

build: Dockerfile
	docker build -t $(prefix)/$(name):$(tag) .
	docker tag $(prefix)/$(name):$(tag) $(prefix)/$(name):latest 

clean-docker:
	docker rmi $(prefix)/$(name):$(tag)

clean-docker-latest:
	docker rmi $(prefix)/$(name):latest

clean: clean-docker clean-docker-latest

monitor:
	docker exec -it $(name) bash


# vim: ft=make
