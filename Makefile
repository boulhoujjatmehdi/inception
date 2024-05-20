path = /home/mehdi/Desktop/srcs/docker-compose.yml


all:build-d

build:
	docker-compose -f $(path) up --build

build-d:
	docker-compose -f $(path) up --build -d

up:
	docker-compose -f $(path) up 

down:
	docker-compose -f $(path) down

clean:
	sudo rm -rf /home/mehdi/data/*/*

cache: down clean
	docker-compose -f $(path) build --no-cache

re:  down clean  build

re-d:  down clean  build-d 

ps:
	docker ps 

mariadb:
	docker exec -it mariadb bash
wordpress:
	docker exec -it wordpress bash
nginx:
	docker exec -it nginx bash
