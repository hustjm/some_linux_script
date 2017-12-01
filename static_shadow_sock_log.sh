#!/bin/bash

## updatae database
nali update >> /dev/null

result_txt=./__static_tmp.file
final_result=./__final_result.file

touch $result_txt $final_result
cat /var/log/shadowsocks.log |awk -F "from" '{print $2}'|grep -v '^$'| awk -F ":" '{a[$1]++}END {for (i in a){print i,a[i]|"sort -n -k2"}}' |column -t >> $result_txt


cat $result_txt | while read line
do
        nali $line  >> $final_result
done

cat $final_result |column -t

rm -rf $result_txt $final_result
