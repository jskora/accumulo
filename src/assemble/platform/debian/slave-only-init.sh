#! /bin/sh
if [ $(id -ur) -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi
 
cp init.d/accumulo-slave /etc/init.d
update-rc.d accumulo-slave start 21 2 3 4 5 . stop 15 0 1 6 .
