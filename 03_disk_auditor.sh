#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts Used: for loop, arrays, awk, du, ls -ld

# Array containing standard paths and Python's library path
TARGET_DIRS=("/etc" "/var/log" "/home" "/tmp" "/usr/lib/python3")

echo "=========================================================="
echo "                 DIRECTORY SECURITY AUDIT                 "
echo "=========================================================="
# Creating a neat table header
printf "%-20s | %-12s | %-15s\n" "DIRECTORY PATH" "USAGE SIZE" "OWNER & PERMS"
echo "----------------------------------------------------------"

for folder in "${TARGET_DIRS[@]}"; do
    if [ -d "$folder" ]; then
        # Extract size, ignoring error messages
        dir_size=$(du -sh "$folder" 2>/dev/null | awk '{print $1}')
        
        # Extract permissions and owner
        dir_perms=$(ls -ld "$folder" | awk '{print $1, $3}')
        
        # Print row in table format
        printf "%-20s | %-12s | %-15s\n" "$folder" "$dir_size" "$dir_perms"
    else
        printf "%-20s | %-12s | %-15s\n" "$folder" "N/A" "DOES NOT EXIST"
    fi
done
echo "=========================================================="
