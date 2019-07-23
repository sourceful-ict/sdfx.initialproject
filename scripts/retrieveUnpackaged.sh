#!/bin/bash

targetusernameOrAlias=$1

rm -rf ./.mdapipackage
sfdx force:mdapi:retrieve -r ./.mdapipackage -k manifest/package.xml -u ${targetusernameOrAlias} 

unzip -o -qq ./.mdapipackage/unpackaged.zip  -d ./.mdapipackage/ # Unzip the file
