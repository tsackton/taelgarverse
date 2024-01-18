#!/bin/zsh

## autobuild Taelgarverse website

## set variables
## path of the source vault
SOURCE_PATH="taelgar"
BUILD_PATH=$(pwd)

## check if needed files are present: autobuild.json, website.json
if [ ! -f autobuild.json ]; then
    echo "autobuild.json not found"
    exit 1
fi

if [ ! -f website.json ]; then
    echo "website.json not found"
    exit 1
fi

## clean source
cd $SOURCE_PATH
git reset --hard

cd $BUILD_PATH
git submodule update --remote --rebase
python run.py
