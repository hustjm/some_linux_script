#!/bin/bash

#####################################################
##    func:  remove the /var/log/shadowsocks.log   ##
##           restart shadowsocks service           ##
##  create:  2017-03-08                            ##
##  Author:  JiangMian                             ##
#####################################################

/usr/bin/python2 /usr/bin/ssserver -c /var/shadow/config.json -d stop
rm -rf /var/log/shadowsocks.log
/usr/bin/python2 /usr/bin/ssserver -c /var/shadow/config.json -d start
