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


#bash update_submodules.sh

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


for file in "${DIR}"/pkgs/* ; do
#for file in "${DIR}"/pkgs//f_trajectory_evaluation ; do
  if [[ -d "$file" && ! -L "$file" ]]; then
    cd $file || return

    echo  "HINT: removing old dist and egg-info directory!"
    rm -r dist
    rm -r *.egg-info
    
    echo  "HINT: build and upload package usign twine..."
    python3 -m build
    # testpyi: python3 -m twine upload --repository testpypi dist/*
    python3 -m twine upload dist/*

    echo  "HINT: removing new dist and egg-info directory!"
    rm -r dist
    rm -r *.egg-info

  fi; 
done
