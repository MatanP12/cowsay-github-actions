#!/bin/sh

if [ $# -eq 0 ];then
    PORT=8080
else
    PORT=$1
fi

export PORT
npm start

