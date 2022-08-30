
#!/bin/bash

# Install virtualenv
pip3 install --user --upgrade pip
pip3 install virtualenv

# Create virtual environment env
python3 -m venv env

# Activate virtual environment env
source env/bin/activate
