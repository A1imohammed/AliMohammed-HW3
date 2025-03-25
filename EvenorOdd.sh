#!/bin/bash

# Function to display script usage
usage() {
  echo "Usage: $0 <number1> <number2>"
  echo "Example: $0 5 10"
  exit 1
}

# Checking if at least two arguments are passed
if [ $# -lt 2 ]; then
  echo "Error: Not enough arguments!"
  usage
fi

# Reading command-line arguments
num1=$1
num2=$2

# Display the values of command-line arguments
echo "First number (from $0): $num1"
echo "Second number (from $1): $num2"
echo "Number of arguments passed: $#"

# Command substitution to get current date
current_date=$(date)
echo "Current date: $current_date"

# Creating and reading variables
message="The sum of $num1 and $num2 is: "
echo "$message"

# Performing arithmetic operation using double parentheses
sum=$((num1 + num2))
echo "$message $sum"

# While loop to count from 1 to the sum
count=1
echo "Counting from 1 to $sum:"
while ((count <= sum)); do
  echo "$count"
  ((count++))  # Incrementing count
done

# Function to check if the sum is even or odd
check_even_odd() {
  if ((sum % 2 == 0)); then
    echo "The sum $sum is even."
  else
    echo "The sum $sum is odd."
  fi
}

# Call the function
check_even_odd

# Exit script
echo "Script execution complete."
