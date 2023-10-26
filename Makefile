
all: build

build:
	docker buildx build -t vvampirius/retracker:no-proxy .

clean:
	docker image rm vvampirius/retracker:no-proxy

