#!/bin/sh

ip=`/sbin/ifconfig eth1 | grep -Po 'inet addr:\d+.\d+.\d+.\d+' | awk -F":" '{gsub(/\./, "-"); print $2}'`
echo -e "$ip\c"

