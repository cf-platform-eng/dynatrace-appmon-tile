#!/bin/sh -e

SOURCE_DIR=$1
TARGET_DIR=$1

cd ${SOURCE_DIR} 
mvn -Dmaven.test.skip=true install
cp ${SOURCE_DIR}/target/*.jar ${TARGET_DIR}
