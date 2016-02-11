#!/bin/bash
#
# Use this script to generate the QR codes for the program. Requires that you have qrencode installed!
#
# Author: Cody Lee <cody@texaslinuxfest.org>
#

while IFS=, read name url
do
  qrencode -m 0 -t PNG -o "${name}.png" $url
done < $1
