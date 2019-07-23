#!/bin/bash

## Convert froem from Unmanaged Container
sfdx force:mdapi:convert -r ./.mdapipackage/unpackaged

## find . -name "*.dup" -delete