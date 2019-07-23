#!/bin/bash

targetusernameOrAlias=$1

sfdx force:mdapi:deploy -d ./.mdapioutput -w 1 -l RunSpecifiedTests -r LIFXControllerTest -u ${targetusernameOrAlias} 

