# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:56:37 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 17:36:52 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE				= 	docker-compose up

DOCKER_COMPOSE_FILE 		= 	./srcs/docker-compose.yml

c							=	dock

start:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(c)

stop:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(c)

status:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

restart:
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up

clean: confirm
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down