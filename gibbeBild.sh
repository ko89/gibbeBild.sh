#!/bin/bash
# by c-muench, dev.pxlbrnd@googlemail.com
# http://pxlbrnd.no-ip.org
# bash-Skript for downloading large photos from twitter-pages.
# usage: ~$ gibbeBild -a [twitter-URL]
#        ~$ gibbeBild -u [twitter-URL]
# ... downloads photos directly into the home-folder.

while getopts a:u: options 2>/dev/null; do # error > /dev/null
        case $options in
                a) url=$OPTARG;;
                u) url=$OPTARG;;
                ?) echo "Unknown parameter!!"
   esac
done

shift $(( OPTIND - 1 )) # important for parameters!

echo "twitterurl: $url"
address="https:$(curl $url | grep 'https://pbs.twimg.com/media/' | sed q | cut -d':' -f 2):large"
wget $address
