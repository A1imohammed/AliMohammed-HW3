#!/bin/bash

# Description: This script creates a directory, a subdirectory, a file with "Hello World!" content,
# and a symbolic link, based on user-provided arguments.
#
# Command-line Arguments:
#   1. Name of the main directory
#   2. Name of the subdirectory inside the main directory
#   3. Name of the text file to be created in the subdirectory
#   4. Name of the symbolic link pointing to the subdirectory
#
# Example Invocation:
# ./simpleAdmin.sh MainDir SubDir myFile.txt MyLink

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <Main Directory> <Sub Directory> <File Name> <Link Name>"
    exit 1
fi

main_dir="$1"
sub_dir="$2"
file_name="$3"
link_name="$4"

echo "Creating directory: $main_dir"
mkdir "$main_dir"

echo "Creating sub-directory: $sub_dir inside $main_dir"
mkdir "$main_dir/$sub_dir"
echo "Creating file: $file_name inside $main_dir/$sub_dir and writing 'Hello World!'"
echo "Hello World!" > "$main_dir/$sub_dir/$file_name"

echo "Creating symbolic link: $link_name pointing to $main_dir/$sub_dir"
ln -s "$main_dir/$sub_dir" "$link_name"

echo "Script execution completed successfully!"
