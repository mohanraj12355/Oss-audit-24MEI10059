#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rajkumar S (24BCE10447)

# --- Directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "$HOME/.config/vlc")

echo "================================================="
echo "        Disk and Permission Audit Report"
echo "================================================="

echo "This report shows directory permissions, ownership, and disk usage."
echo "-------------------------------------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        
        # Get size (ignore permission errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        # Display nicely formatted output
        printf "%-25s | %s | Owner: %s:%s | Size: %s\n" \
        "$DIR" "$PERMS" "$OWNER" "$GROUP" "${SIZE:-N/A}"

    else
        printf "%-25s | Not Found ❌\n" "$DIR"
    fi
done

echo "-------------------------------------------------"
echo "VLC Configuration Check:"

# --- VLC specific check ---
if [ -d "$HOME/.config/vlc" ]; then
    echo "VLC configuration folder is present."
    echo "This folder stores user preferences and settings in open, editable format."
else
    echo "VLC configuration folder not found."
    echo "Try running VLC once to generate user configuration files."
fi

echo "================================================="