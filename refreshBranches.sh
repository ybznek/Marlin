#!/bin/bash

set -e

# add remote
git remote | grep -q marlin || git remote add  marlin https://github.com/MarlinFirmware/Marlin.git


# merge changes
git checkout bugfix-2.0.x
git merge marlin/bugfix-2.0.x

# apply to multiple branches
git checkout bugfix-2.0.x-cnc
git merge bugfix-2.0.x

git checkout bugfix-2.0.x-endy
git merge bugfix-2.0.x

git checkout bugfix-2.0.x-endy-junior
git merge bugfix-2.0.x


# return to base branch
git checkout bugfix-2.0.x

git push --all
