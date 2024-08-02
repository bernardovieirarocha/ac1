#!/bin/bash

# Loop to remove folders from Guia 00 to Guia 17
for i in $(seq -w 0 17); do
    rm -r "Guia $i"
done

echo "Folders Guia 00 to Guia 17 removed successfully."
