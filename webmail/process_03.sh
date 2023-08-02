#!/bin/bash
cd /var/www/html/

chmod 755 -R rainloop/

cd rainloop
chown -R www-data:www-data data

/etc/init.d/apache2 restart