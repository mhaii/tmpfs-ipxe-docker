#!/bin/sh
set -e

if [ -n "$(ls -A /assets 2>/dev/null)" ]
then
  echo "copying assets to tmpfs"
  cp -rf /assets /var/www/localhost/htdocs
  echo "done copying"
else
  echo "no asset found, run mkdir just in case"
  mkdir -p /var/www/localhost/htdocs
fi

chmod 755 /var/www/localhost/htdocs

# from `sebp/lighttpd`
exec start.sh
