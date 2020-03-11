#!/bin/bash

curdir=`pwd`
sudo apt-get update
sudo apt-get install gnome-tweak-tool
sudo apt-get install gnome-shell-extensions
themes=`ls gtk_src/themes`
icons=`ls gtk_src/icons`
for theme in $themes
do
    if [ ! -d /usr/share/themes/$theme ]; then
        ln -s $curdir/gtk_src/themes/$theme /usr/share/themes/
        echo "linking $theme to /usr/share/themes"
    else
        echo "$theme already exist"
    fi
done
for icon in $icons
do
    if [ ! -d /usr/share/icons/$icon ]; then
        ln -s $curdir/gtk_src/icons/$icon /usr/share/icons/
        echo "linking $icon to /usr/share/icons"
    else
        echo "$icon already exist"
    fi
done
exit 0
