#!/bin/bash

# downloads GO results files from GOrilla based on links saved in lynx_bookmarks.html
# this assumes that the bookmarks file is in the current directory
# and that the run name (as used in the bookmarks file) is provided as an argument
# the downloaded files are named <runname>_GO_<process|component|function>.xls

runname=$1

url=$(awk -F '"' "/${runname}/ {print \$2}" lynx_bookmarks.html)
url=$(echo $url | sed 's/\/GOResults.html//')
url=$(echo $url | sed 's/servlet\/GOrilla?id=/GOrilla\//')
wget ${url}/GOPROCESS -O ${runname}_GO_process.xls
wget ${url}/GOCOMPONENT -O ${runname}_GO_component.xls
wget ${url}/GOFUNCTION -O ${runname}_GO_function.xls