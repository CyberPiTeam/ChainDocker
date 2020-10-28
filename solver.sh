#!/bin/sh
current=""
while [[ $current != *"flag"* ]]
do
	current=`curl -s http://localhost:8080/$current`
done
echo $current
