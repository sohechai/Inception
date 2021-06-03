mkdir /var/www/html/Adminer/
cd /var/www/html/Adminer/
wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3.php
mv adminer-4.7.3.php ../adminer.php
chmod 755 -R /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/
