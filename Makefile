path = ./srcs/docker-compose.yml
VOLUMES_PATH = /home/eboulhou/data

all:build

build: c_volumes
	docker-compose -f $(path) up --build -d
foreground: c_volumes
	docker-compose -f $(path) up --build 

up:
	docker-compose -f $(path) up 

down:
	docker-compose -f $(path) down

clean:
	sudo rm -rf /home/eboulhou/data/*

fclean: clean 
	docker system prune -a -f
	
cache: down clean
	docker-compose -f $(path) build --no-cache

re: clean  down  build

c_volumes:
	sudo mkdir -p $(VOLUMES_PATH)/DB $(VOLUMES_PATH)/Wordpress















mariadb:
	docker exec -it mariadb bash
wordpress:
	docker exec -it wordpress bash
nginx:
	docker exec -it nginx bash
