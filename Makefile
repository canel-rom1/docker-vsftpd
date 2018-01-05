prefix ?= canelrom1
name   ?= vsftpd
tag    ?= $(shell date +%y.%m.%m)

port   ?= 21

all: run

run:
	docker run -d --name $(name) -p $(port):21 $(prefix)/$(name):latest

build: Dockerfile
	docker build -t $(prefix)/$(name):$(tag) .
	docker tag $(prefix)/$(name):$(tag) $(prefix)/$(name):latest 

stop:
	docker stop $(name)

rm: stop
	docker rm $(name)

clean-docker:
	docker rmi $(prefix)/$(name):$(tag)

clean-docker-latest:
	docker rmi $(prefix)/$(name):latest

clean: clean-docker clean-docker-latest

monitor:
	docker exec -it $(name) bash


# vim: ft=make
