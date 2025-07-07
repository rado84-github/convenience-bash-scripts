#!/usr/bin/bash
#requires the package graphicsmagick to be installed. That's what it's called in Arch Linux, IDK the package name for other distros.

gm identify -format "%w×%h" $1.jpg
