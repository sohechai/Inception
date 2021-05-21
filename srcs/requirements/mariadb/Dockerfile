# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:02 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 16:12:11 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN apt-get install php-fpm php-mysql -y
RUN apt-get install php-cgi php-common php-pear php-net-socket php-xml-util -y
RUN apt-get install php-mbstring php-zip php-gd php-xml  php-gettext php-bcmath -y
RUN apt-get install libnss3-tools -y
RUN apt-get install unzip wget -y
RUN apt-get purge apache2 -y

COPY srcs/wp-config.php /tmp/
COPY srcs/config.inc.php /tmp/
COPY srcs/nginx.conf /etc/nginx/sites-available/
COPY srcs/wordpress.conf /etc/nginx/sites-available/
COPY srcs/script.sh ./

EXPOSE 3306

CMD bash script.sh