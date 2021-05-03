#!/bin/bash

set -e

# add remote
git remote | grep -q marlin || git remote add  marlin https://github.com/MarlinFirmware/Marlin.git


# fetch changes
git fetch marlin bugfix-2.0.x

# merge changes
git checkout bugfix-2.0.x
git rebase marlin/bugfix-2.0.x

# apply to multiple branches
git checkout bugfix-2.0.x-cnc
git rebase bugfix-2.0.x

git checkout bugfix-2.0.x-endy
git rebase bugfix-2.0.x

git checkout bugfix-2.0.x-endy-junior
git rebase bugfix-2.0.x


# return to base branch
git checkout bugfix-2.0.x

git push --all
