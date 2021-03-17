#  Our python3 package eco-system 

A repository to check out all packages of our eco-system, to set up a virtual environment, and finally to run all unit tests. 
The directory names of the submodules was modified intentionally to render the dependency graph manually, as `pip` is not able to resolve dependencies within a `requirements.txt` file.
If one wishes to add a new `git submodule`, think of an appropriate prefix. 
This allows us (i) to generate a `requirements.txt` file based on all submodules and (ii) to run all `pyhton unittests`. 

HINT: This project can also be used to develop/extend existing packages (submodules). 

## Overview

![eco-system](./doc/pic/architecture.png)
HINT: the diagram was created with [DrawIO](https://drawio-app.com/)

## Setup 
Clone the repository with all submodules:
```
git clone --recurse-submodules -j8 git@gitlab.aau.at:aau-cns/py3_pkgs/test_all_py3_pkgs.git
```

Then run the `source setup-env.sh` that will
1) generate the `requirements.txt` based on the submodules
2) install a virtual environment `python-venv`
3) activate the local interpreter `(venv)`


## Unit-tests

After the setup, simply run `run_tests.sh` and wait (some windows of plots need to be closed!).

## Upload packages

To upload the files to `Test PyPI` is automated by running `upload_packages.sh`. 
Follow the [official documentation](https://packaging.python.org/tutorials/packaging-projects/) and you might have to configure the `API token`. 

## Develop 

One can use this repository to modify or extend our package eco-system. A good choice is to the IDE [PyCharm](https://www.jetbrains.com/pycharm/).
As the dependencies (our new packages) have to be resolved properly, the IDE has to use our virtual Python environment.
Therefore, run the application in the root of the repository after the setup step was performed.
One will be asked to define a project interpreter, but reject it for in the beginning. 
Then got to `File->Settings->Project:<>->Python Interpreter`. There none is selected, thus click on the setting button (*) to get the `Add` dialog.
Click on `Existing Interpreter` and navigate to `<root>/python-venv/env/bin/python3`. Now everything should be working.
A quick check is to run a test in the package `trajectory_evaluation` (e.g. [test_TrajectoryNEES.py](./pkgs/f_trajectory_evaluation/test/test_TrajectoryNEES.py)).


## License

Software License Agreement (MIT  License), refer to the LICENSE file.

*Sharing is caring!* - [Roland Jung](https://github.com/jungr-ait)  
