#!/bin/bash

# Define the directory where the files are stored
DIR="path/to/scriptbin/data"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
  echo "Directory $DIR does not exist."
  exit 1
fi

# Find files older than 24 hours and delete them
find "$DIR" -type f -mtime +1 -exec rm -f {} \;

