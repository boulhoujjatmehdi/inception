path = /home/mehdi/Desktop/docker-compose.yml


all:build

build:
	docker-compose -f $(path) up --build
down:
	docker-compose -f $(path) down
clean:
	sudo rm -rf /home/mehdi/data/*/*
cache:
	docker-compose -f $(path) build --no-cache

