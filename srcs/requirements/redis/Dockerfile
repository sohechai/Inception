# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/03 13:20:46 by sohechai          #+#    #+#              #
#    Updated: 2021/06/03 17:50:57 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install software-properties-common -y && \
	add-apt-repository ppa:chris-lea/redis-server -y && \
	apt-get install redis-server php-redis -y

COPY ./script.sh ./

EXPOSE 6379

CMD sh script.sh
