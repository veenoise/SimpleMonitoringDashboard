#!/usr/bin/env bash

# Constants
timeout_default="1m"

# Install stress for stress testing
if [[  $(dpkg --list | grep stress | wc -l) == 0 ]]; then
    sudo apt install stress -y
fi

# Change timeout
if [[ $1 != "" ]]; then
    timeout_default=$1
else 
    # Ask nicely for timeout
    echo -n 'Timeout after how many seconds (press enter; defaults 1m): '
    read timeout_tmp
    
    # Change timeout
    if [[ $timeout_tmp != "" ]]; then
        timeout_default=$timeout_tmp
    fi
fi

echo This process will timeout in $timeout_default

stress --cpu 8 --io 4 --vm 2 --timeout $timeout_default