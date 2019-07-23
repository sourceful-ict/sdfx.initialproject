#!/bin/bash

if [ $# -lt 1 ]
then
    echo Usage: retriveCode orgalias packageName
    exit
fi

## Retrieve the PackageXML from Unmanaged Container
rm -rf ./.mdapipackage

sfdx force:mdapi:retrieve -s -r ./.mdapipackage -u $1 -p "$2" # Retrieve Metadata API Source from Package Name

unzip -o -qq ./.mdapipackage/unpackaged.zip -d ./.mdapipackage # Unzip the file
rm ./.mdapipackage/unpackaged.zip 