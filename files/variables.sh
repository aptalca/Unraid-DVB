#!/bin/bash

# set our package list
slack_package_list=(autoconf automake bc binutils cpio flex gc gcc gcc-g++ glibc glibc-solibs guile kernel-headers kernel-modules lftp libcgroup libgudev libmpc libtool libunistring m4 make mercurial mpfr ncurses patch perl pkg-config sqlite)

# current TBS Drivers See http://www.tbsdtv.com/download/
TBS="160630"

# current LibreELEC Release - See https://github.com/LibreELEC/dvb-firmware/releases
LE="1.1.0"

# current OpenELEC Release - See https://github.com/CvH/dvb-firmware/releases
OE="1.11"

# current Digital Devices Github release - See https://github.com/DigitalDevices/dddvb/releases
DD="0.9.26"

# current Date (DDExp Version)
DATE=$(date +'%d%m%y')

# find our working folder
D="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

# clean up old files if they exist
[[ -f "$D"/FILE_LIST ]] && rm "$D"/FILE_LIST
[[ -f "$D"/URLS ]] && rm "$D"/URLS

# current Unraid Version
VERSION="$(cat /etc/unraid-version | tr "." - | cut -d '"' -f2)"

# get slackware64-current FILE_LIST
wget -nc http://mirrors.slackware.com/slackware/slackware64-current/slackware64/FILE_LIST

python_url="https://github.com/dmacias72/unRAID-plugins/raw/master/packages/6.2/python-2.7.11-x86_64-2.txz"
slack_package_urlbase="http://mirrors.slackware.com/slackware/slackware64-current/slackware64"

for i in "${slack_package_list[@]}"
do
package_locations=$(grep "\<$i-[[:digit:]].*.txz$" FILE_LIST | cut -b 53-9001)
echo "$slack_package_urlbase""$package_locations" >> "$D"/URLS
done
echo "$python_url" >> "$D"/URLS
