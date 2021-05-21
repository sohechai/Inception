# setup wordpress
wget -c https://wordpress.org/latest.tar.gz
mkdir /var/www/html/wordpress
tar -xvzf latest.tar.gz --strip-components=1 -C /var/www/html/wordpress
mv /tmp/wp-config.php /var/www/html/wordpress
ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

service php7.3-fpm start
bash