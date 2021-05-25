# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:35:17 by sohechai          #+#    #+#              #
#    Updated: 2021/05/25 19:21:43 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

rm /etc/mysql/mariadb.conf.d/50-server.cnf

# setup my sql
# if [ -z "$(ls -A /var/lib/mysql)" ]; then
	service mysql start # sudo systemctl start mariadb
	echo "CREATE DATABASE wordpress;" | mysql -u root
	echo "CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'wordpress_password';" | mysql -u root
	echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%';" | mysql -u root
	echo "FLUSH PRIVILEGES;" | mysql -u root

# fi
	service mysql restart

bash
