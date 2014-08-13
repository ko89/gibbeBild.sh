#!/bin/bash
# by pxlbrnd, dev.pxlbrnd@googlemail.com
# http://pxlbrnd.no-ip.org
# Bash-Skript for downloading pictures from twitter-pages.
# Run "$ chmod +x gibbeBild.sh" first.
# Usage: $ ./gibbeBild -u [twitter-URL] -s [small/large/orig(=default)]
# ... downloads pictures directly into the home-folder.
# Todo: implement folder structure for auto-sorting.
# Todo: convenience mode (./gibbeBild.sh [twitter-URL]) could be handled nicer

size=":orig"
while getopts u:s: options 2>/dev/null; do # error > /dev/null
	case $options in
		u) url=$OPTARG;;
		s) size=":$OPTARG";;
                ?) echo "Unknown parameter!!"
	esac
done

shift $(( OPTIND - 1 )) # important for parameters!

if [ -z $url ]; then
	if [ -n $1 ]; then
		echo "Url parameter (-u) not found. Assuming url is the only argument"
		url=$1
	else
		echo "No url supplied!"
		exit
	fi
fi

echo "twitterurl: $url"
address="https:$(curl $url | grep 'https://pbs.twimg.com/media/' | sed q | cut -d':' -f 2)$size"
cd ~
wget $address
