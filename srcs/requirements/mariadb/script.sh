# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 15:08:40 by sohechai          #+#    #+#              #
#    Updated: 2021/06/05 20:52:49 by user42           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

if [ ! -d "/tmp/ok" ]; then
	service mysql start
	echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root -ppass
	echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" | mysql -u root -ppass
	echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" | mysql -u root -ppass
	echo "FLUSH PRIVILEGES;" | mysql -u root -ppass
	mkdir /tmp/ok

fi

