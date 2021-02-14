#!/bin/bash

# remove yourself
rm $0

if [ "$1" == "" ]; then
    VERSION="1.3.0"
else
    VERSION="$1"
fi

# install glow
URL="https://github.com/charmbracelet/glow/releases/download/v${VERSION}/glow_${VERSION}_linux_amd64.deb"
TARGET="glow.deb"

curl -L $URL -o $TARGET
sudo dpkg -i $TARGET
rm $TARGET

echo
echo '"glow" is now on the path'
