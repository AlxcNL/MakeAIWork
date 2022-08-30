
#!/bin/bash

# Install virtualenv
python3 -m pip install --upgrade pip
python3 -m pip install virtualenv

# Create virtual environment env
python3 -m venv env

# Activate virtual environment env
source env/bin/activate
