#!/bin/bash

service nginx start

# PRODUCTION
/opt/letsencrypt/letsencrypt-auto certonly --agree-tos --text --non-interactive --register-unsafely-without-email -a webroot --webroot-path=/var/www/ -d stream.demokratielive.org
# DEVELOPMENT
# /opt/letsencrypt/letsencrypt-auto certonly --test-cert --agree-tos --text --non-interactive --register-unsafely-without-email -a webroot --webroot-path=/var/www/ -d stream.demokratielive.org

cp /usr/local/nginx/conf/nginx.conf.new /usr/local/nginx/conf/nginx.conf

service nginx restart
