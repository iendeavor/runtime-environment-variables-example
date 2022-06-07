#!/bin/bash

cd /app

sed -i "s/__ENV__.NAME/\"$NAME\"/g" index.js

nginx -g "daemon off;"
