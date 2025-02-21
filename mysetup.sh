#!/bin/bash

# Description: This script sets the CPU frequency to 600 MHz, displays CPU information, 
# sets and prints a directory variable, and counts the number of items in the current directory.
# 
# Command-line Arguments: None
# 
# Example Invocation:
# ./mySetup.sh

echo "Setting CPU frequency to 600 MHz..."
sudo cpufreq-set -f 600MHz

echo "Displaying CPU frequency information:"
cpufreq-info

location="/home/debian"
echo "Location: $location"

items=$(ls -1 | wc -l)
echo "Number of items in the current directory: $items"
