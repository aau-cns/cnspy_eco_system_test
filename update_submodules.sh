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
echo "HINT: updates all submodules"

git submodule update --init --recursive
git submodule foreach --recursive git fetch
git submodule foreach git clean -f
git submodule foreach git pull origin master



