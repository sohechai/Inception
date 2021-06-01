# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:13:50 by sohechai          #+#    #+#              #
#    Updated: 2021/06/01 22:19:02 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install nginx php-fpm php-mysql -y && \
	apt-get install wget -y

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/sites-available/default.conf
COPY ./index.html /var/www/html/

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/
RUN mkdir /root/mkcert && \
  cd /root/mkcert && \
  wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 && \
  mv mkcert-v1.1.2-linux-amd64 mkcert && \
  chmod +x mkcert && \
./mkcert -install && \
./mkcert localhost && \
chown www-data:www-data /var/www && \
chmod 744 /var/www

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
