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

echo "HINT: iterates over the pkgs directory and executes the unit test"

CUR_DIR=${PWD}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"



for file in ${DIR}/pkgs/* ; do 
          
  if [[ -d "$file" && ! -L "$file" ]]; then
    cd $file
    python3 -m unittest -v 
  fi; 
done

