.PHONY:

default: build

build:
	docker build -t yvess/drone-fig .
