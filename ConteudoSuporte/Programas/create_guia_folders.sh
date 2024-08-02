#!/bin/bash

# Check if the directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

TARGET_DIR="$1"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Loop to create folders from Guia 00 to Guia 17 in the specified directory
for i in $(seq -w 0 17); do
    mkdir "$TARGET_DIR/Guia $i"
done

echo "Folders Guia 00 to Guia 17 created successfully in $TARGET_DIR."
