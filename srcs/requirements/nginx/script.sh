# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:16:24 by sohechai          #+#    #+#              #
#    Updated: 2021/05/21 18:36:47 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default

# chown -R www-data:www-data /var/www/*
# chmod -R 755 /var/www/*

!/bin/bash
service nginx start
bash