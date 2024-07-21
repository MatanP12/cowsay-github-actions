#!/bin/sh

PORT=$1

if [ -v PORT ];then
    PORT=$PORT
else
    PORT=8080
fi

export PORT=$PORT
npm start