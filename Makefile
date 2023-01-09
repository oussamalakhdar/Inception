all:
	docker compose -f ./srcs/docker-compose.yml build

up:
	docker compose -f ./srcs/docker-compose.yml up

down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker volume rm `docker volume ls -q`
	rm -rf	/home/olakhdar/data/mariadb/* \
			/home/olakhdar/data/portainer/* \
			/home/olakhdar/data/portfoliov/* \
			/home/olakhdar/data/wordpress/*