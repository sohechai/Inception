# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:08 by sohechai          #+#    #+#              #
#    Updated: 2021/06/06 00:06:37 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.42lyon.fr>"

RUN apt-get update && apt-get upgrade -y && \
	apt-get install php-fpm php-mysql -y && \
	apt-get install php-cgi php-common php-pear php-net-socket php-xml-util -y && \
	apt-get install php-mbstring php-zip php-gd php-xml  php-gettext php-bcmath -y && \
	apt-get install unzip wget curl -y

COPY ./script.sh ./
COPY ./wp-config.php ./tmp/
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

CMD bash script.sh
