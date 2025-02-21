#!/bin/bash

# Description: This script sums the first three command-line arguments and then calls
# subtractMachine.sh with the sum and the fourth argument.
#
# Command-line Arguments:
#   1. First number
#   2. Second number
#   3. Third number
#   4. Fourth number (to be used in subtraction)
#
# Example Invocation:
# ./threeAmigos.sh 5 10 15 8
#
# Expected Output:
# Sum: 30
# (Output of subtractMachine.sh with arguments 30 and 8)
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <number1> <number2> <number3> <number4>"
    exit 1
fi

num1="$1"
num2="$2"
num3="$3"
num4="$4"

# Calculate the sum of the first three numbers
sum=$((num1 + num2 + num3))

echo "Sum: $sum"

# Execute subtractMachine.sh with the sum and fourth argument
./subtractMachine.sh "$sum" "$num4"
