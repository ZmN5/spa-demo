#!/bin/bash
set -e

cp deploy/nginx.conf /etc/nginx/nginx.conf
cp deploy/nginx.site.conf /etc/nginx/conf.d/site.conf
sed -i "s@{{BACKEND_HOST}}@${BACKEND_HOST}@" /etc/nginx/conf.d/site.conf 

ulimit -n 65536
exec 2>&1
exec nginx -c /etc/nginx/nginx.conf

