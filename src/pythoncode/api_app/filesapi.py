#!/usr/bin/python3
import os
import sys
path, dirn = os.path.split(os.path.dirname(os.path.realpath(__file__)))
print("files path: '%s'; directory name: '%s'" % (path, dirn))
sys.path.append(path)
for path in sys.path:
    print (path)
from pathlib import Path
from files.files_api import FileAPI

if __name__ == '__main__':
   print("Argument passed: '%s'" % sys.argv[1])
   #fileName = Path("/mnt/c/PracticeProjects/files-tests/src/errorinstallingubuntu.txt")
   fileName = Path(sys.argv[1])
   print ("Upload file: '%s'" % fileName)
   fapp = FileAPI()
   fapp.uploadFile(fileName)
   #fapp.getFiles()
