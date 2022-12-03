#!/usr/bin/env bash

while true
do
    sleep 60
    rsync -av --delete /var/www/html/ /home/site/wwwroot/
done
