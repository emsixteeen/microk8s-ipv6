#!/bin/bash

prefix=/var/snap/microk8s/current

for patchFile in $(find . -type f -name "*.patch" -printf "%P\n")
do
  patchName=${patchFile%".patch"}
  filePath=$(echo ${patchName} | sed -e 's#/patches##g')
  sudo patch ${prefix}/${filePath} ${patchFile}
done
