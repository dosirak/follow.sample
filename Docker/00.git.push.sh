#!/bin/sh


echo `dirname $0`
git pull
git add *
git commit -m "docker follow sample"
git push
