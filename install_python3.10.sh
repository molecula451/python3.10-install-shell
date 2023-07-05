#!/bin/bash

# Update the system
apt update

# Install required packages
apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev

# Download Python 3.10 source code
wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz

# Extract the downloaded archive
tar -xf Python-3.10.0.tgz
cd Python-3.10.0

# Configure and build Python
./configure --enable-optimizations
make -j$(nproc)

# Install Python
make install

# Clean up
cd ..
rm -rf Python-3.10.0 Python-3.10.0.tgz

# Verify the installation
python3.10 --version
