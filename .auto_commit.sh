#!/bin/bash

TIME=`LC_ALL=C date`

git pull

# add all new files
git add .
git commit -a -m "Automated commit on $TIME"

# push to server
#git push

