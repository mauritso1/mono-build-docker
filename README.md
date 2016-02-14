Dockerfile to build a project with mono

put .config files you want to overwrite in ./config
put the project in the ./src directory

build.sh/run.sh assumes

```
mono-build-docker/
└─── src/
│	├── <name>.sln    
│	└─── <name>/
│		├──   packages.config
│		└───   files in config directory will be copied/overwritten here
└─── config/
	└─── files that need to be overwritten
```
