#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export URI=wangjia184/v2ray:20170927

sudo docker rm -f v2ray
sudo docker run -ti --name v2ray \
    --net=host \
    -v $DIR/client-config.json:/etc/v2ray/config.json \
    $URI #/bin/bash