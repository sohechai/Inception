# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:35:17 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 16:35:12 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# setup my sql
service mysql start # sudo systemctl start mariadb
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "SET PASSWORD FOR root@localhost=PASSWORD('password1');" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'user1'@'localhost';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "SET PASSWORD FOR root@localhost=PASSWORD('password2');" | mysql -u root

# droit
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

