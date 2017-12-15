#!/bin/bash

# do things relative to the directory this script is in
DIR=$(dirname "$0")

# will save the tzar release to this file
JAR=$DIR/tzar.jar

# get it if not there already
if [ ! -f $JAR ]; then
  wget -O $JAR https://github.com/agentsoz/tzar-framework/raw/dev/releases/tzar.20171215.jar
fi

# now run it
java -jar $JAR execlocalruns https://github.com/ascelin/tzar-example-R-pop-model.git --repotype=GIT


