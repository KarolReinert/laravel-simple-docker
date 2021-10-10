FROM php:7.4-fpm

# Copy composer.lock and composer.json
COPY ./app/composer.lock ./app/composer.json /var/www/

# Set working directory
WORKDIR /var/www

# Install dependencies
ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions amqp apcu bcmath exif pdo_mysql gd grpc imap intl ldap mcrypt opcache pgsql pdo_pgsql redis sockets uuid xdebug yaml zip


# Clear cache
RUN apt clean && rm -rf /var/lib/apt/lists/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
COPY ./app /var/www

# Copy existing application directory permissions
COPY --chown=www:www . /var/www

# Change current user to www
USER www

# XDEBUG CONFIGURATION
RUN docker-php-ext-enable xdebug

# Expose port 9000 and start php-fpm server
EXPOSE 9003
EXPOSE 9000
CMD ["php-fpm"]
