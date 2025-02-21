#!/bin/bash

# Description: This script subtracts the smaller number from the larger, prints the difference,
# and counts down from the difference to 1.
#
# Command-line Arguments:
#   1. First number
#   2. Second number
#
# Example Invocation:
# ./subtractMachine.sh 10 3
#
# Expected Output:
# Difference: 7
# 7
# 6
# 5
# 4
# 3
# 2
# 1
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

num1="$1"
num2="$2"

# Check if the numbers are equal
if [ "$num1" -eq "$num2" ]; then
    echo "The numbers cannot be equal."
    exit 1
fi

# Determine the larger and smaller number
if [ "$num1" -gt "$num2" ]; then
    difference=$((num1 - num2))
else
    difference=$((num2 - num1))
fi
echo "Difference: $difference"

# Countdown from difference to 1
for (( i=difference; i>=1; i-- )); do
    echo countdown="$i"
done
