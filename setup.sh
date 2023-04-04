#!/bin/bash

DOWNLOAD=wget
if ! [ -x "$(command -v $DOWNLOAD)" ]; then
    DOWNLOAD="curl -L -O"
fi

$DOWNLOAD https://cursor.so/resources.zip
$DOWNLOAD https://cursor.so/lsp.zip

unzip resources.zip
unzip lsp.zip

rm ./resources.zip
rm ./lsp.zip
