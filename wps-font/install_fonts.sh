#!/bin/bash
fonts_dir=`pwd`
target_dir=/usr/share/fonts/wps
mkdir -p ${target_dir} || exit 0;
cp ${fonts_dir}/*.ttf ${target_dir} || exit 0;
cd ${target_dir}
mkfontscale
mkfontdir
fc-cache
cd ${fonts_dir}

