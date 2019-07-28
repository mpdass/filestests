#!/bin/bash
args=$#
if [ ${args} == 0 ]; then
   echo "This script requires an argument of file name with a full path"
   echo "   (e.g): ./run_api_test.sh /mnt/c/PracticeProjects/files-tests/src/errorinstallingubuntu.txt"
   echo ""
   exit -1
fi
source ./envvars
/usr/bin/python3 pythoncode/api_app/filesapi.py ${1}
