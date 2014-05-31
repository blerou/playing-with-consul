#!/bin/bash

set -e

VERSION="0.2.1"
FILE="${VERSION}_linux_amd64.zip"
BASE_DIR="/vagrant/"
DOWNLOAD_URL="https://dl.bintray.com/mitchellh/consul/${FILE}"

if [ ! -f "${BASE_DIR}${FILE}" ]; then
    cd $BASE_DIR
    echo "Downloading Consul ${VERSION}"
    wget -q $DOWNLOAD_URL -O $FILE
    apt-get -q install unzip > /dev/null
    unzip -q $FILE
    cd - > /dev/null
fi

