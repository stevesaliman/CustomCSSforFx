#!/bin/sh

if [ $# -lt 1 ]; then
	echo "Usage: install.sh <profile_dir>"
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "$1 does not exist!"
	exit 1
fi

mkdir -p "$1/chrome"
rsync -avi --delete classic/ $1/chrome
