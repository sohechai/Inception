# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/24 19:46:44 by sohechai          #+#    #+#              #
#    Updated: 2021/05/25 17:50:49 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

mv /tmp/wp-config.php /var/www/html/wordpress/

# droit
chown www-data.www-data /var/www/html/wordpress/* -R
# chown -R www-data:www-data /var/www/*
# chmod -R 755 /var/www/*

service nginx restart
service php7.3-fpm start
bash
# while true; do
#     sleep 1;
# done
