# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/06 00:04:34 by sohechai          #+#    #+#              #
#    Updated: 2021/06/06 00:04:59 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

mkdir /var/www/html/Adminer/
cd /var/www/html/Adminer/
wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3.php
mv adminer-4.7.3.php ../adminer.php
chmod 755 -R /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/
