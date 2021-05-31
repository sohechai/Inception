# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sohechai <sohechai@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 15:16:24 by sohechai          #+#    #+#              #
#    Updated: 2021/05/31 18:29:08 by sohechai         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# ssl certification
mkdir /root/mkcert && \
  cd /root/mkcert && \
  wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 && \
  mv mkcert-v1.1.2-linux-amd64 mkcert && \
  chmod +x mkcert
./mkcert -install
./mkcert localhost

#droit
chown www-data:www-data /var/www
chmod 744 /var/www

service nginx restart
bash
