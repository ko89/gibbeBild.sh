#!/bin/bash
# by c-muench, dev.pxlbrnd@googlemail.com
# http://pxlbrnd.no-ip.org
# bash-Skript for downloading large photos from twitter-pages.
# usage: ~$ gibbeBild -u [twitter-URL] -s [size]
# size: "small", "large" or "orig" (orig=default)
# ... downloads photos directly into the home-folder.

size=":orig"
while getopts a:u:s: options 2>/dev/null; do # error > /dev/null
        case $options in
                u) url=$OPTARG;;
		s) size=":$OPTARG";;
                ?) echo "Unknown parameter!!"
   esac
done

shift $(( OPTIND - 1 )) # important for parameters!

echo "twitterurl: $url$size"
address="https:$(curl $url | grep 'https://pbs.twimg.com/media/' | sed q | cut -d':' -f 2)$size"
cd ~
wget $address
