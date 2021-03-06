#!/usr/bin/env bash
set -e

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
ROOT=`dirname $SCRIPT`
LICODE_ROOT="$ROOT"/..
CURRENT_DIR=`pwd`
NVM_CHECK="$LICODE_ROOT"/scripts/checkNvm.sh

echo [erizo_controller] Installing node_modules for erizo_controller

npm install --loglevel error amqp socket.io@2.0.3 log4js@1.0.1 node-getopt uuid@3.1.0
npm install --loglevel error -g google-closure-compiler-js

echo [erizo_controller] Done, node_modules installed

cd ./erizoClient/

gulp erizo

echo [erizo_controller] Done, erizo.js compiled
