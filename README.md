# SFDX App
```sfdx force:auth:web:login -a NORMAL_ENV``` <br />
or use any other environment
<br />
```sfdx force:auth:web:login -a NORMAL_ENV_ALIAS```<br />
```sfdx force:auth:web:login -a NORMAL_ENV_ALIAS -r https://login.salesforce.com```<br />
```sfdx force:auth:web:login -a SCHRACHORG_ALIAS -r https://test.salesforce.com```<br />
<br />
```sfdx force:org:list```<br />
<br />
```sfdx force:org:open -u NORMAL_ENV_ALIAS```<br />
```sfdx force:org:open -u SCHRACHORG_ALIAS```<br />

## Create scratch
```sfdx force:org:create -f config/project-scratch-def.json -d 30 -v NORMAL_ENV_ALIAS -a SCHRACHORG_ALIAS```<br />
```sfdx force:org:delete -u SCHRACHORG_ALIAS```<br />

```sfdx force:config:set defaultusername=SCHRACHORG_ALIAS```<br />
```sfdx force:config:set defaultdevhubusername=NORMAL_ENV_ALIAS```<br />
```sfdx force:config:list```<br />
<br />
SFDX: Refresh SObject Definitions

# Generate password for scratch
```sfdx force:user:password:generate -u SCHRACHORG_ALIAS ```<br />
or use any other scratch

## Share scratch
```sfdx force:user:display -u SCHRACHORG_ALIAS``` <br />
or use any other scratch

```sfdx force:user:display -u SCHRACHORG_ALIAS```<br />
```sfdx force:user:password:generate -u SCHRACHORG_ALIAS```<br />

## Dev, Build and Test
```sfdx force:source:status```<br />
```sfdx force:source:push```<br />
```sfdx force:source:pull```<br />

## Resources
```sfdx plugins:install etcopydata```<br />
```sfdx ETCopyData:export```<br />
```sfdx ETCopyData:import```<br />

## Deploy to Sandbox
```./scripts/convertForDeploy.sh``` <br />
....modify what you need in .mdapioutput folder <br />
```./scripts/deployUnpackaged.sh currenc1```

## Issues
### Importing data
1. Pull data from repo
2. Make sfdx push firstly ( it will make sure you have all elements created )
3. Make ETCopy import (Resources section in this README)