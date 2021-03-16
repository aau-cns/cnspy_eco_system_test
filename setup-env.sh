#! /bin/bash
################################################################################
#
# Copyright (C) 2020 Roland Jung, University of Klagenfurt, Austria.
#
# All rights reserved.
#
# This software is licensed under the terms of the BSD-2-Clause-License with
# the "Commons Clause" License Condition v1.0 which allows for non-commercial
# use only, the full terms of which are made available in the LICENSE file.
# No license in patents is granted.
#
# You can contact the author at roland.jung@aau.at
#
################################################################################





CUR_DIR=${PWD}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VENV_DIR=${DIR}/python-venv



# first generate the requirments:
chmod +x ${DIR}/generate_requirements.sh
bash ${DIR}/generate_requirements.sh

# create virtual environment
if [ ! -d "$VENV_DIR" ]; then
  mkdir ${VENV_DIR} 
fi  

cd ${VENV_DIR}

sudo apt-get install python3-venv
python3 -m pip install virtualenv
python3 -m venv env
source env/bin/activate
which python

# install requirements:
pip install -r ${DIR}/requirements.txt

cd ${CUR_DIR}

