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

CUR_DIR=${PWD}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VENV_DIR=${DIR}/python-venv


bash update_submodules.sh

# create virtual environment
if [ ! -d "$VENV_DIR" ]; then
  source setup-env.sh   
fi  

source ${VENV_DIR}/env/bin/activate
which python3

python3 -m pip install --upgrade build
python3 -m pip install --upgrade twine


echo "HINT: building and uploading all packages using twine"
echo "HINT: make sure you have setup the API token in /home/.pypirc !"
for file in ${DIR}/pkgs/* ; do 
          
  if [[ -d "$file" && ! -L "$file" ]]; then
    cd $file
    python3 -m build
    python3 -m twine upload --repository testpypi dist/*
  fi; 
done
