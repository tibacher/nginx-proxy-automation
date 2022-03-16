#!/bin/sh

docker_path=`realpath $(dirname $(readlink -f $0))/../`
cd $docker_path/bin 

source ../.env

RC=0

sudo bash ./fresh-start.sh --update-nginx-template --use-nginx-conf-files --yes -e $DEFAULT_EMAIL --skip-docker-image-check

exit $RC
