#!/bin/bash

targetusernameOrAlias=$1

sfdx force:mdapi:deploy -d ./.mdapioutput -l RunLocalTests -w 1 -u ${targetusernameOrAlias}

