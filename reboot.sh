#!/bin/bash

DATE_STAMP=`date "+%Y-%m-%d %H:%M:%S" `
echo "${DATE_STAMP} restart" >> /home/sys_logs/reboot.log 
reboot
