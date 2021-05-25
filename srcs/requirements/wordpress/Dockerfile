# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:08 by sohechai          #+#    #+#              #
#    Updated: 2021/05/25 19:31:22 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install php-fpm php-mysql -y
RUN apt-get install php-cgi php-common php-pear php-net-socket php-xml-util -y
RUN apt-get install php-mbstring php-zip php-gd php-xml  php-gettext php-bcmath -y
RUN apt-get install unzip wget -y

RUN wget -c https://wordpress.org/latest.tar.gz
RUN mkdir /var/www/html/wordpress
RUN tar -xvzf latest.tar.gz --strip-components=1 -C /var/www/html/wordpress

COPY ./script.sh ./
COPY ./wp-config.php ./tmp/
COPY ./wordpress.conf /etc/nginx/sites-available/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 9000

CMD bash script.sh