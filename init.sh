#!/usr/bin/env bash

# install some essential tools
apt-get install ipython python-pip python-virtualenv git

# Setup python virtual environment
rm -rf /vagrant/venv/workshop
mkdir -p /vagrant/venv
virtualenv /vagrant/venv/workshop

# Enable virtual environment for all ssh session
echo "source /vagrant/venv/workshop/bin/activate\ncd /vagrant" >> /home/vagrant/.bashrc

# Install python modules to python virtual environment
source /vagrant/venv/workshop/bin/activate
pip install --upgrade pip

# Prevent error
# InsecurePlatformWarning: A true SSLContext object is not available.
# Ref: http://stackoverflow.com/questions/29134512/insecureplatformwarning-a-true-sslcontext-object-is-not-available-this-prevent
apt-get install libffi-dev libssl-dev
pip install pyopenssl ndg-httpsclient pyasn1
pip install PyYAML

