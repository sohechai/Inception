# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:13:50 by sohechai          #+#    #+#              #
#    Updated: 2021/05/31 18:29:08 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx php-fpm php-mysql -y
RUN apt-get install wget -y

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./index.html /var/www/html/
COPY ./script.sh ./

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

EXPOSE 443

CMD bash script.sh