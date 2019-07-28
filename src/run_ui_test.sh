#!/bin/bash
args=$#
if [ ${args} == 0 ]; then
   echo "This script requires an argument of file name with a full path"
   echo "   (e.g): ./run_ui_test.sh C:\\PracticeProjects\\files-tests\\src\\errorinstallingubuntu.txt"
   echo ""
   exit -1
fi
LIBS=/mnt/c/selenium-java-3.141.59/client-combined-3.141.59.jar:\
/mnt/c/selenium-java-3.141.59/libs/byte-buddy-1.8.15.jar:\
/mnt/c/selenium-java-3.141.59/libs/commons-exec-1.3.jar:\
/mnt/c/selenium-java-3.141.59/libs/guava-25.0-jre.jar:\
/mnt/c/selenium-java-3.141.59/libs/okhttp-3.11.0.jar:\
/mnt/c/selenium-java-3.141.59/libs/okio-1.14.0.jar
APP_JAR=./lib/uitestcases.jar
echo ${LIBS}
echo ${APP_JAR}
source ./envvars
echo "Running: "java -cp ${LIBS}:${APP_JAR} FilesAPITestApplication""
java -cp ${LIBS}:${APP_JAR} api_app.FilesAPITestApplication ${1}
