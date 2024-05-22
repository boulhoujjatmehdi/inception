path = /home/mehdi/Desktop/srcs/docker-compose.yml
VOLUMES_PATH = /home/mehdi/data



all:build-d

build: c_volumes
	docker-compose -f $(path) up --build

build-d: c_volumes
	docker-compose -f $(path) up --build -d

up:
	docker-compose -f $(path) up 

down:
	docker-compose -f $(path) down

clean:
	sudo rm -rf /home/mehdi/data/*/*

cache: down clean
	docker-compose -f $(path) build --no-cache

re: clean  down  build

re-d:  down clean  build-d 

ps:
	docker ps 

mariadb:
	docker exec -it mariadb bash
wordpress:
	docker exec -it wordpress bash
nginx:
	docker exec -it nginx bash

c_volumes:
	mkdir -p $(VOLUMES_PATH)/DB $(VOLUMES_PATH)/Wordpress