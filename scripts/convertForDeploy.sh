#!/bin/bash

rm -rf ./.mdapioutput
## Convert for Deploy
sfdx force:source:convert -d ./.mdapioutput

## Next
#sfdx force:mdapi:deploy -w 1 -d ./.mdapioutput -u aliasOrg