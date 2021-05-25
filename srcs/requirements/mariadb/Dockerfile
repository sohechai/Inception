# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:02 by sohechai          #+#    #+#              #
#    Updated: 2021/05/25 19:21:03 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y

COPY ./mariadb-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./script.sh ./

EXPOSE 3306

CMD bash script.sh