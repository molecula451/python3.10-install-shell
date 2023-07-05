#!/bin/bash

# Update the alternatives for python3 command
update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.10 1

# Set python3.10 as the default alternative
update-alternatives --set python3 /usr/local/bin/python3.10

# Verify the default Python version
python3 --version
