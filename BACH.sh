#!/bin/bash
# Build, Add, Commit, and pusH

set -e #stop when error
today=$(date "+%Y-%m-%d")

hugo --cleanDestinationDir

git add .
git commit -m "$today $*"
git push
