FROM php:7.4-apache

COPY phpdockerfile.conf /etc/apache2/sites-available/phpdockerfile.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY src /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
