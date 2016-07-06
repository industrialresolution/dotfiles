#!/bin/zsh

mysql.server stop
pg_ctl -D /usr/local/var/postgres -m fast stop
killall php
killall nginx
killall node
