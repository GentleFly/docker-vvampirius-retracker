
all: build

build:
	docker buildx build -t vvampirius/retracker:proxy .

clean:
	docker image rm vvampirius/retracker:proxy

