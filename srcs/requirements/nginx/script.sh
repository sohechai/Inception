# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:16:24 by sohechai          #+#    #+#              #
#    Updated: 2021/05/24 17:09:45 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

#setup nginx
ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default

# ssl certification
mkdir ~/mkcert && \
  cd ~/mkcert && \
  wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 && \
  mv mkcert-v1.1.2-linux-amd64 mkcert && \
  chmod +x mkcert
./mkcert -install
./mkcert localhost

# ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled

#droit
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

# service php7.3-fpm start
service nginx restart
bash