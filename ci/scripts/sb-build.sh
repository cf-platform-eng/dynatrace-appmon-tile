#!/bin/sh -exv

# Get absolute path and not relative path
SOURCE_DIR="$(cd "$1" && pwd)"
TARGET_DIR="$(cd "$2" && pwd)"

cd ${SOURCE_DIR} 
mvn -Dmaven.test.skip=true install

# This would fail with relative paths
cp ${SOURCE_DIR}/target/*.jar ${TARGET_DIR}
