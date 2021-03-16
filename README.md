# Test All Py3 Pkgs

A repository to checkout all packages, to set up a virtual environment, and finally to run all unit tests. 
The directory names of the submodules was modified intentionally to render the dependency graph manually, as `pip` is not able to resolve dependencies within a `requirements.txt` file.
If one wishes to add a new `git submodule`, think of an appropriate prefix. 
This allows us (i) to generate a `requirements.txt` file based on all submodules and (ii) to run all `pyhton unittests`. 

HINT: This project can also be used to develop/extend existing packages (submodules). 

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


## License

Software License Agreement (MIT  License), refer to the LICENSE file.

*Sharing is caring!* - [Roland Jung](https://github.com/jungr-ait)  
