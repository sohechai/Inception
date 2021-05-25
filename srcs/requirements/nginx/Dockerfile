# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:13:50 by sohechai          #+#    #+#              #
#    Updated: 2021/05/25 12:35:26 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install wget -y

# COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/sites-available/
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
# COPY ./wordpress.conf /etc/nginx/sites-available/
COPY ./index.html /var/www/html/
COPY ./script.sh ./

EXPOSE 443

CMD bash script.sh