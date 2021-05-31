# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/24 19:46:44 by sohechai          #+#    #+#              #
#    Updated: 2021/05/31 18:29:08 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

cd /var/www/html
mv /tmp/wp-config.php ./

# wordpress installation + setup
wp core download --allow-root
wp core config --dbname=wordpress --dbuser=wordpress_user --dbpass=wordpress_password --dbhost=mariadb --dbprefix=wp_ --allow-root
wp core install --url="localhost" --title="INCEPTION" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root

#droit
chown www-data:www-data /var/www
chmod 744 /var/www

mkdir -p /run/php
php-fpm7.3 --nodaemonize
