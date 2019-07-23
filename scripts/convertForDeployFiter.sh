#!/bin/bash

## Convert for Deploy with filter

## Need sfdx plugins:install sfdx_metadatas_filtering
## Install plugin:
## sfdx plugins:install sfdx_metadatas_filtering

sfdx metadatafilter:execute -i ./force-app -p ./manifest/package.xml -o ./.mdapioutput

## Next
#sfdx force:mdapi:deploy -w 1 -d ./.mdapioutput -u aliasOrg