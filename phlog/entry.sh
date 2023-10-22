#!/bin/bash

# Get the current date in the required format
current_date=$(date '+%Y-%m-%d')

# Get the title from the first argument
title=$1

# Replace spaces in the title with underscores
title=${title// /_}

# Concatenate the date and title to form the filename
filename="${current_date}_${title}"

# Create the file with the filename
touch "$filename.txt"

# Add the required lines to the file
echo "TITLE: $title" >> "$filename"
echo "DATE: $current_date" >> "$filename"
echo "AUTHOR: Pez" >> "$filename"

sleep 1

# Open the file
vim "$filename.txt"
