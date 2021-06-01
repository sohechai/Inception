# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:02 by sohechai          #+#    #+#              #
#    Updated: 2021/06/01 22:45:01 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./mariadb-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && \
	mysqladmin -u root password pass && \
	service mysql restart && \
	echo "CREATE DATABASE wordpress;" | mysql -u root -ppass && \
	echo "CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'wordpress_password';" | mysql -u root -ppass && \
	echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%';" | mysql -u root -ppass && \
	echo "FLUSH PRIVILEGES;" | mysql -u root -ppass

EXPOSE 3306

CMD mysqld