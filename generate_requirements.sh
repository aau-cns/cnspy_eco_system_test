#! /bin/bash
################################################################################
#
# Copyright (C) 2020 Roland Jung, University of Klagenfurt, Austria.
#
# All rights reserved.
#
# This software is licensed under the terms of the MIT License, the full terms 
# of which are made available in the LICENSE file.
#
# You can contact the author at roland.jung@aau.at
#
################################################################################

echo "HINT: iterates over the pkgs directory and create an entry in the requirements.txt"

CUR_DIR=${PWD}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

REQ_FILE="${DIR}/requirements.txt"


if [ "${REQ_FILE}" ]; then
  rm ${REQ_FILE} 
fi  

touch ${REQ_FILE} 

# needed in PyCharm to run test cases
echo "pytest" >> ${REQ_FILE}

for file in ${DIR}/pkgs/* ; do 
          
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "--> module found: ${file}"   
    echo "-e $file" >> ${REQ_FILE}
  fi; 
done

