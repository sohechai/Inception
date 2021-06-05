# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 15:08:40 by sohechai          #+#    #+#              #
#    Updated: 2021/06/05 23:59:43 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

if [ ! -d "/tmp/ok" ]; then
	mysql_install_db
    service mysql start
    mysql -e "CREATE USER '$DB_USER'@'localhost' identified by '$DB_PASS';" &&\
	mysql -e "CREATE DATABASE wordpress;" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" &&\
	mysql -e "FLUSH PRIVILEGES;"
	mkdir /tmp/ok

fi

mysqld