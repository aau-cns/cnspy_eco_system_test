# Test All Py3 Pkgs

A repository to checkout all packages, to set up a virtual environment, and finally to run all unit tests. 


## Setup 
Clone the repository with all submodules:
```
git clone --recurse-submodules -j8 git@gitlab.aau.at:aau-cns/py3_pkgs/test_all_py3_pkgs.git
```

Then run the `setup-env.sh` that will
1) generate the `requirements.txt` based on the submodules
2) install a virtual environment `python-venv`
3) activate the local interpreter `(venv)`


## Unit-tests

After the setup, simply run `run_tests.sh` and wait.


## License

Software License Agreement (GNU GPLv3  License), refer to the LICENSE file.

*Sharing is caring!* - [Roland Jung](https://github.com/jungr-ait)  
