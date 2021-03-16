#! /bin/bash


echo "HINT: iterates over the pkgs directory and create an entry in the requirements.txt"

CUR_DIR=${PWD}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

REQ_FILE="${DIR}/requirements.txt"


if [ "${REQ_FILE}" ]; then
  rm ${REQ_FILE} 
fi  

touch ${REQ_FILE} 


for file in ${DIR}/pkgs/* ; do 
          
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "--> module found: ${file}"   
    echo "-e $file" >> ${REQ_FILE}
  fi; 
done

