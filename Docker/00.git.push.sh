#!/bin/sh


echo `dirname $0`
git pull origin
git add *
git commit -m "docker follow sample"
git push
