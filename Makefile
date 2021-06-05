# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:56:37 by sohechai          #+#    #+#              #
#    Updated: 2021/06/06 00:07:22 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE				= 	docker-compose

DOCKER_COMPOSE_FILE 		= 	srcs/docker-compose.yml

start:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build

stop:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

status:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

restart:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up --build

clean:
	@${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} down
	@sudo rm -rf /home/sohechai/data/wordpress/*
	@sudo rm -- -rf /home/sohechai/data/mariadb/*