#!/bin/sh
#CONFIG_PATH="/etc/os-net-config/config.yaml"

CONFIG_PATH="/tmp/test"
LAST_SUM=""
while /bin/true
do
    SUM=$(md5sum ${CONFIG_PATH}|awk '{print $1}')
    if [ "$SUM" == "$LAST_SUM" ]
    then
        echo "sleep 5"
        sleep 5

    else
        LAST_SUM=$SUM
        echo "/usr/local/bin/os-net-config"
    fi
done