IMAGE_NAME := apache-beam-on-jupyter-notebook:1.0.0

.PHONY: all build run dev

all: run

build:
	docker build -t $(IMAGE_NAME) .

run: build
	docker run -p 8888:8888 -it --rm -v $(PWD):/work/ $(IMAGE_NAME) 