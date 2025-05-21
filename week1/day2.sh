#!/bin/bash

# Day 2: File Operations
# Mini-Project: Organize files by extension into separate folders

# Loop through all items in the current directory
for file in *; do
    # Check if it's a regular file
    if [ -f "$file" ]; then
        # Get the file extension (e.g., txt from note.txt)
        ext="${file##*.}"
        # Skip files with no extension or where extension is the whole name
        if [[ "$file" == *.* && "$ext" != "$file" ]]; then
            # Create a folder for the extension if it doesn't exist
            mkdir -p "$ext"
            # Move the file to its extension folder
            mv "$file" "$ext/$file"
            echo "Moved $file to $ext/"
        fi
    fi
done