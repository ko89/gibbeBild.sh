Bash-Script for downloading photos uploaded to twitter
======================================================

This script automatically downloads photos to your home-folder, if feeded with a twitter-URL.


Supported Platforms
-------------------

Should work under all *nix-Environments.
Needs curl, wget, sed and cut, so please install these beforehand.


Usage
-----
First, run "~$ chmod +x gibbeBild.sh".

In the shell, type "~$ ./gibbeBild.sh -u [twitter-URL] -s [small/large/orig]" from the directory you stored gibbeBild.sh. In case you want original-sized pictures, you don't have to pass the s-parameter at all, as orig-size is set to be the default.

If you have the script deep within a folder-history, consider adding "alias gibbeBild='[path/to/script]/gibbeBild.sh'" to your .bashrc, so you can run it from anywhere in your shell quickly.


Problems?
---------
Don't hesitate to leave a message or email me: dev.pxlbrnd@googlemail.com
