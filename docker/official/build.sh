#!/bin/bash

export URI=wangjia184/v2ray:20170927
sudo docker build -t=$URI .
sudo docker push $URI
