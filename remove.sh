#!/bin/bash

path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd)
folder=$(echo $path | awk -F/ '{print $NF}')
cd $path
source config

docker stop $folder
docker rm $folder

rm -r /root/hyperlane_db_$CHAIN
mv /root/scripts/$folder /root/backup
