#!/bin/bash

set -e

# add remote
git remote | grep -q marlin || git remote add  marlin https://github.com/MarlinFirmware/Marlin.git


# fetch changes
git fetch marlin bugfix-2.0.x

# merge changes
git checkout bugfix-2.0.x
git merge marlin/bugfix-2.0.x --no-edit

# apply to multiple branches
git checkout bugfix-2.0.x-cnc
git merge bugfix-2.0.x --no-edit

git checkout bugfix-2.0.x-endy
git merge bugfix-2.0.x --no-edit

git checkout bugfix-2.0.x-endy-junior
git merge bugfix-2.0.x --no-edit

# return to base branch
git checkout bugfix-2.0.x

git push --all
