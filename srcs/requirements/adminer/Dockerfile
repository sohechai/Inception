# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/03 12:06:33 by sohechai          #+#    #+#              #
#    Updated: 2021/06/03 12:46:43 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install nginx wget -y

COPY ./script.sh ./

EXPOSE 8080

ENTRYPOINT sh script.sh
