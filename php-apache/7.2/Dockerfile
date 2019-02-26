FROM php:7.2-apache

MAINTAINER tonyy_b <dev@tony-botalla.me>

RUN apt-get update \
	&& apt-get install -y libmcrypt-dev \
		libjpeg62-turbo-dev \
		libpcre3-dev \
		libpng-dev \
		libfreetype6-dev \
		libxml2-dev \
		libicu-dev \
		libzip-dev \
		mysql-client \
		wget \
		unzip \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install iconv intl pdo_mysql mbstring soap gd zip

RUN docker-php-source extract \
  && if [ -d "/usr/src/php/ext/mysql" ]; then docker-php-ext-install mysql; fi \
  && if [ -d "/usr/src/php/ext/mcrypt" ]; then docker-php-ext-install mcrypt; fi \
	&& if [ -d "/usr/src/php/ext/opcache" ]; then docker-php-ext-install opcache; fi \
	&& docker-php-source delete

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Enable apache modules
RUN a2enmod rewrite headers

# PHP configuration
COPY ./config/php.ini /usr/local/etc/php/

COPY ./config/entry.sh /tmp/
RUN ["chmod", "+x", "/tmp/entry.sh"]

# Run
ENTRYPOINT ["/tmp/entry.sh"]
CMD ["sites_conf"]
