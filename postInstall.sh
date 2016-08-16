#!/bin/bash

service nginx start
/opt/letsencrypt/letsencrypt-auto certonly --agree-tos --text --non-interactive --register-unsafely-without-email -a webroot --webroot-path=/var/www/ -d stream.demokratielive.org
service nginx restart