#!/bin/bash
# For setting up my unix development setup

# Create symlinks

# Source directory containing the files
source_directory="."

# Target directory where symlinks will be created
target_directory="~/"

for file in "$source_directory"/*; do
    # Get the filename without the path
    filename=$(basename "$file")

    # Check if the file is not 'setup.sh'
    if [ "$filename" != "setup.sh" ]; then
        # Create a symlink in the target directory
        ln -s "$file" "$target_directory/$filename"
    fi
done
