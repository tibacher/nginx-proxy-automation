#!/bin/sh
docker_path=$NGINX_DOCKER
RC=0
cd $docker_path
/usr/bin/docker-compose down -v --remove-orphans || RC=1
rm proxy/conf.d/default.conf
exit $RC
