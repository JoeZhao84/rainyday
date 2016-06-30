#!/bin/bash

python3 -m venv --without-pip env3
source env3/bin/activate
wget https://pypi.python.org/packages/source/s/setuptools/setuptools-18.5.tar.gz
tar -xzvf setuptools-18.5.tar.gz
cd setuptools-18.5
python setup.py install
cd ..
rm -rf setuptools*
wget https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz
tar -zxvf pip-7.1.2.tar.gz
cd pip-7.1.2
python setup.py install
cd ../
rm -rf pip*
deactivate
