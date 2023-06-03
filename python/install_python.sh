#!/bin/bash

# Exit on error
set -e

# Step 1 - Download the Python source code
cd /tmp/
wget https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz

# Step 2 - Extract the tarball
tar -xzvf Python-3.11.1.tgz

# Step 3 - Install necessary dependencies
cd Python-3.11.1/
sudo apt-get update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev

# Step 4 - Configure and build Python
./configure --enable-optimizations
make -j $(nproc)

# Step 5 - Install Python
sudo make altinstall

# Step 6 - Create a symbolic link to Python
sudo ln -sf /usr/local/bin/python3.11 /usr/local/bin/python3

# Step 7 - Verify the installation
python3 --version
