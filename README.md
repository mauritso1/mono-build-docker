Dockerfile to build a project with mono

put .config files you want to overwrite in ./config
put the project in the ./src directory

build.sh assumes

src/
  <name>.sln
  <name>/
    packages.config
    <files in the ./config directory will be copied/overwritten here>
