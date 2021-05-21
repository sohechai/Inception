# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:13:50 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 18:30:35 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y

COPY ./nginx.conf /etc/nginx/sites-available/
COPY ./script.sh ./
# COPY ./default.conf conf.d/default.conf
# COPY ./php-default.conf sites/default.conf

# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 443

# CMD service nginx start

# RUN bash
CMD bash script.sh