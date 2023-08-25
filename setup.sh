#!/bin/bash
# For setting up my unix development setup

# Create symlinks
# ln -s "$(pwd)/.bashrc" ~/.bashrc


for file in ./* .[^.]*; do
    filename=$(basename "$file")
    
    if [ "$filename" != "setup.sh" ]; then
        if [ "$filename" != ".git" ]; then
            target_path="$HOME/$filename"
        
            echo $target_path
            # Check if the target file already exists (whether it's a file or symlink)
            if [ -e "$target_path" ]; then
                rm $target_path
            fi
            ln -s "$(pwd)/$filename" "$target_path"
        fi
    fi
done