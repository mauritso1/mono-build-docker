#!/bin/bash


cd /src
SLN_FILE="$(ls *.sln  | sort -n | head -1)"
CONFIG_FOLDER=$"${SLN_FILE%.*}"

build () {
  	echo "starting build"
  	cp -R /packages /src/
  	cp /config/* /src/$CONFIG_FOLDER /
  	xbuild /p:Configuration=Release $SLN_FILE
  	echo "build done"
}


install_dependencies () {
	echo "installing dependencies"
	nuget restore $SLN_FILE -Source https://www.nuget.org/api/v2 -OutputDirectory /packages
	echo "dependencies installed"
}


install_dependencies
build
echo "If installing the dependencies took long, rebuild the docker image"

