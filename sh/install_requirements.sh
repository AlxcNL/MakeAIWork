#!/usr/bin/env bash

# Activate virtual environment env
source env/bin/activate

# CONDA

# # Install tensorflow and lidar
# conda install -c conda-forge tensorflow \
#   tensorflow \
#   tensorboard-plugin-wit \
#   tensorflow-estimator \
#   lidar

#  PIP

# Upgrade pip
python3 -m pip install --upgrade pip

# Install setuptools
pip install setuptools
Install all required libraries t
pip install -r requirements.txt
