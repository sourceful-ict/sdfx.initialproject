#!/bin/bash

targetusernameOrAlias=$1
packageName=$2

rm -rf ./.mdapipackage
sfdx force:mdapi:retrieve -r ./.mdapipackage -p ${packageName} -u ${targetusernameOrAlias} 
unzip -o -qq ./.mdapipackage/unpackaged.zip -d ./.mdapipackage # Unzip the file

