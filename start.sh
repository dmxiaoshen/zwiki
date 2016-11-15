#!/bin/sh

# ./start.sh 80

NAME=$1
if [ "$NAME"x = ""x ] ; then
NAME="80"
echo $NAME
else
echo $NAME
fi
nohup gunicorn -b localhost:$NAME app:app &
echo "started"
echo "---------------"