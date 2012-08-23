#! /bin/sh
if [ $(id -ur) -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi
 
cp init.d/accumulo-tracer /etc/init.d
update-rc.d accumulo-tracer defaults 
