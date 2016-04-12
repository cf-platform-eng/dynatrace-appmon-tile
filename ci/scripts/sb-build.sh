#!/bin/sh -e

SOURCE_DIR=$1
TARGET_DIR=$1

(cd ${SOURCE_DIR}; mvn -Dmaven.test.skip=true install)

VERSION=`grep '^version:' ${SOURCE_DIR}/tile-history.yml | sed 's/^version: //'`
HISTORY="tile-history-${VERSION}.yml"

cp ${SOURCE_DIR}/target/*.jar ${TARGET_DIR}
