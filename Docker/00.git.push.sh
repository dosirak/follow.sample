#!/bin/sh

cd `dirname $0`

COMMIT_MSG="Docker follow sample"
#read COMMIT_MSG

git pull
git add *
git commit -m "${COMMIT_MSG}"
git push
