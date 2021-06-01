# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/24 19:46:44 by sohechai          #+#    #+#              #
#    Updated: 2021/06/01 23:02:11 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# wordpress installation + setup
cd /var/www/html
mv /tmp/wp-config.php ./
wp core download --allow-root
wp core config --dbname=wordpress --dbuser=wordpress_user --dbpass=wordpress_password --dbhost=mariadb --dbprefix=wp_ --allow-root
wp core install --url="sohechai.42.fr" --title="INCEPTION" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
wp user create $SUB_USER $SUB_EMAIL --user_pass=$SUB_PASSWORD --role=subscriber --allow-root

#droit
chown www-data:www-data /var/www
chmod 744 /var/www

#run php
mkdir -p /run/php
php-fpm7.3 -F
