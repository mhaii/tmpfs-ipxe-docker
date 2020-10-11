#!/bin/sh
set -e

if [ -n "$(ls -A /assets 2>/dev/null)" ]
then
  echo "COPY!"
  cp -rf /assets /var/www/localhost/htdocs
fi

chmod 755 /var/www/localhost/htdocs

# from `sebp/lighttpd`
exec start.sh
