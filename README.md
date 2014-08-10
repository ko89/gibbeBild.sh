Bash-Script for downloading pictures uploaded to twitter
========================================================

This script automatically downloads pictures to your home-folder, if feeded with a twitter-URL.

Why?
----

Some time ago, when clicking on uploaded pictures on twitter, you got the original picture in the original size.
Nowadays, twitter resizes them to fit them in their GUI and you can't get to the picture itself in a conventional way, so you have to parse the html-source and search for the image-url yourself, copy it and paste it into a new tab/window, and then you can download the original image. 

gibbeBild.sh does exactly that.


Supported Platforms
-------------------

Should work under all *nix-Environments.
Needs curl, wget, sed and cut, so please install these beforehand.


Usage
-----
First, run "$ chmod +x gibbeBild.sh".

In the shell, type "$ ./gibbeBild.sh -u [twitter-URL] -s [small/large/orig]" from the directory you stored gibbeBild.sh. In case you want original-sized pictures, you don't have to pass the s-parameter at all, as orig-size is set to be the default.

If you have the script deep within a folder structure, consider adding "alias gibbeBild='[path/to/script]/gibbeBild.sh'" to your ~/.bashrc, so you can run it via "$ gibbeBild -u [twitter-URL] -s [small/large/orig]" from anywhere in your shell quickly.


Problems?
---------
Don't hesitate to leave a message or email me: dev.pxlbrnd@googlemail.com
