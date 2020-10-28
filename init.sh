#!/bin/sh
last=""
current=""
for i in $(seq 1 200)
do
        current=`sed 1q /dev/urandom | md5sum | cut -f 1 -d ' '`
        if [ $i -eq 1 ]
        then
                echo $current > index.html
        elif [ $i -eq 200 ]
        then
                echo "flag{light_at_the_end}" > $last
        else
                echo $current > $last
        fi
        last=$current
        done

