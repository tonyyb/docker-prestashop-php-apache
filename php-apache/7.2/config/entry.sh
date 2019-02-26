#!/bin/bash

if [ "$1" = 'sites_conf' ]; then
    cat > /etc/apache2/sites-enabled/default.conf <<EOF
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot "/var/www/htdocs"
    ServerName localhost
    SetEnv PS_ENV $PS_ENV
    SetEnv PS_MYSQL_DOCKER_HOST $PS_MYSQL_DOCKER_HOST
    SetEnv PS_MYSQL_DOCKER_USER $PS_MYSQL_DOCKER_USER
    SetEnv PS_MYSQL_DOCKER_PASSWORD $PS_MYSQL_DOCKER_PASSWORD
    SetEnv PS_MYSQL_DOCKER_DATABASE $PS_MYSQL_DOCKER_DATABASE
    SetEnv PS_DOCKER_DOMAIN $PS_DOCKER_DOMAIN
    <Directory "/var/www/htdocs/">
        AllowOverride all
    </Directory>
</VirtualHost>
EOF
fi

exec apache2-foreground
