#!/bin/bash

targetusernameOrAlias=$1

sfdx force:mdapi:deploy -w 1 -d ./.mdapioutput -u ${targetusernameOrAlias}

