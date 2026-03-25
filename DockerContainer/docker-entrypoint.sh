#!/bin/sh
set -e
PORT="${PORT:-8080}"
sed -i "s/^Listen .*/Listen ${PORT}/" /usr/local/apache2/conf/httpd.conf
exec httpd-foreground
