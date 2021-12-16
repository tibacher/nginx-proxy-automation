#!/bin/bash

docker_path=`realpath $(dirname $(readlink -f $0))/../`
cd $docker_path/bin 

source ../.env
sudo bash ./fresh-start.sh --update-nginx-template --use-nginx-conf-files --yes -e $DEFAULT_EMAIL

