#!/bin/bash
# For setting up my unix development setup

# Create symlinks

# Source directory containing the files
source_directory="."

# Target directory where symlinks will be created
target_directory="~/"

for file in "$source_directory"/*; do
    filename=$(basename "$file")
    
    if [ "$filename" != "setup.sh" ]; then
        target_path="$target_directory/$filename"
        
        # Check if the target file already exists (whether it's a file or symlink)
        if [ -e "$target_path" ]; then
            rm "$target_path"
        fi
        ln -s "$file" "$target_path"
    fi
done
