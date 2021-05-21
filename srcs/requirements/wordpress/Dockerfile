# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:14:08 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 16:12:10 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintainer="<sohechai@student.le-101.fr>"

RUN apt-get update && apt-get upgrade -y
RUN sudo apt -y install php7.4-fpm -y
RUN apt-get install php-cgi php-common php-pear php-net-socket php-xml-util -y
RUN apt-get install php-mbstring php-zip php-gd php-xml  php-gettext php-bcmath -y

RUN apt-get install wget -y

# RUN apt-get purge apache2 -y

COPY srcs/wp-config.php /tmp/
COPY srcs/wordpress.conf /etc/nginx/sites-available/
# COPY srcs/config.inc.php /tmp/
COPY srcs/script.sh ./

EXPOSE 9000

CMD bash script.sh