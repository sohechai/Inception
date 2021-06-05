# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:02 by sohechai          #+#    #+#              #
#    Updated: 2021/06/06 00:03:33 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install mariadb-server mariadb-client -y && \
	rm /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./mariadb-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./script.sh ./


EXPOSE 3306

CMD mysqld && sh script.sh