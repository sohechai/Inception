# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:13:50 by sohechai          #+#    #+#              #
#    Updated: 2021/06/06 00:06:22 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install nginx -y && \
	apt-get install wget openssl -y

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/sites-available/default.conf
COPY ./index.html /var/www/html/

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj \
	'/C=FR/ST=69/L=Lyon/O=42/CN=sohechai' \
	-keyout /etc/ssl/certs/localhost.key -out \
	/etc/ssl/certs/localhost.crt
RUN chown www-data:www-data /var/www && \
	chmod 744 /var/www

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
