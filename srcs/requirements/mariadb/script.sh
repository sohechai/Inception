# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:35:17 by sohechai          #+#    #+#              #
#    Updated: 2021/05/31 18:54:18 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup my sql
# if [ -z "$(ls - /A /var/lib/mysql)" ]; then
	service mysql start
	mysqladmin -u root password pass
	service mysql restart
	echo "CREATE DATABASE wordpress;" | mysql -u root -ppass
	echo "CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'wordpress_password';" | mysql -u root -ppass
	echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%';" | mysql -u root -ppass
	echo "FLUSH PRIVILEGES;" | mysql -u root -ppass

# fi
# 	service mysql restart

bash
