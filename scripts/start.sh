#!/bin/sh

docker_path=`realpath $(dirname $(readlink -f $0))/../`
cd $docker_path

RC=0

sudo cp ./conf.d/* ./data/conf.d/

/usr/bin/docker-compose up -d --remove-orphans || RC=1
exit $RC
