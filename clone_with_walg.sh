#!/bin/bash

mkdir -p /var/lib/postgresql/16/main
touch /var/lib/postgresql/16/main/postgresql.conf
rm -rf /var/lib/postgresql/16/main/*
/usr/local/bin/wal-g backup-fetch /var/lib/postgresql/16/main/ LATEST
cp /home/backups/postgresql.conf /var/lib/postgresql/16/main/
touch "/var/lib/postgresql/16/main/recovery.signal"
