#! /usr/bin/env bash

# Options.
DATADIR="/var/www/owncloud/data"

# Make sure $DATADIR is owned by owncloud user. This effects ownership of the
# mounted directory on the host machine too.
chown -R owncloud:owncloud "$DATADIR"

#start webserver
exec sudo /usr/sbin/httpd -D "FOREGROUND"
