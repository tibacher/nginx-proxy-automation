#!/bin/sh
nextcloud_docker_path=`realpath $(dirname $(readlink -f $0))/../`
cd $nextcloud_docker_path
RC=0
/usr/bin/docker-compose down -v --remove-orphans || RC=1
rm proxy/conf.d/default.conf
exit $RC
