#!/bin/sh -exv

SOURCE_DIR="$(cd "$1" && pwd)"
TARGET_DIR="$(cd "$2" && pwd)"

cd ${SOURCE_DIR} 
mvn -Dmaven.test.skip=true install
cp ${SOURCE_DIR}/target/*.jar ${TARGET_DIR}
