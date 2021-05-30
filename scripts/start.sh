#!/bin/sh
docker_path=$NGINX_DOCKER
RC=0
cd $docker_path

sudo -u 33 cp ./conf.d/uploadsize.conf ./data/conf.d/

/usr/bin/docker-compose up -d --remove-orphans || RC=1
exit $RC
