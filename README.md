# SFDX App
```sfdx force:auth:web:login -a NORMAL_ENV```
or use any other environment

```sfdx force:auth:web:login -a NORMAL_ENV_ALIAS```
```sfdx force:auth:web:login -a NORMAL_ENV_ALIAS -r https://login.salesforce.com```
```sfdx force:auth:web:login -a SCHRACHORG_ALIAS -r https://test.salesforce.com```

```sfdx force:org:list```

```sfdx force:org:open -u NORMAL_ENV_ALIAS```
```sfdx force:org:open -u SCHRACHORG_ALIAS```

## Create scratch
```sfdx force:org:create -f config/project-scratch-def.json -d 30 -v NORMAL_ENV_ALIAS -a SCHRACHORG_ALIAS```
```sfdx force:org:delete -u SCHRACHORG_ALIAS```

```sfdx force:config:set defaultusername=SCHRACHORG_ALIAS```
```sfdx force:config:set defaultdevhubusername=NORMAL_ENV_ALIAS```
```sfdx force:config:list```
<br />
SFDX: Refresh SObject Definitions

# Generate password for scratch
```sfdx force:user:password:generate -u SCHRACHORG_ALIAS ```
or use any other scratch

## Share scratch
```sfdx force:user:display -u SCHRACHORG_ALIAS``` 
or use any other scratch

```sfdx force:user:display -u SCHRACHORG_ALIAS```
```sfdx force:user:password:generate -u SCHRACHORG_ALIAS```

## Dev, Build and Test
```sfdx force:source:status```
```sfdx force:source:push```
```sfdx force:source:pull```

## Resources
```sfdx plugins:install etcopydata```
```sfdx ETCopyData:export```
```sfdx ETCopyData:import```

## Deploy to Sandbox
```./scripts/convertForDeploy.sh``` <br />
....modify what you need in .mdapioutput folder <br />
```./scripts/deployUnpackaged.sh currenc1```

## Issues
### Importing data
1. Pull data from repo
2. Make sfdx push firstly ( it will make sure you have all elements created )
3. Make ETCopy import (Resources section in this README)