#!/bin/sh -e

SOURCE_DIR="$(cd "$1" && pwd)"
TARGET_DIR=$2

cd ${SOURCE_DIR} 
mvn -Dmaven.test.skip=true install
cp ${SOURCE_DIR}/target/*.jar ${TARGET_DIR}
