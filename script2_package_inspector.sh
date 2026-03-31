#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rajkumar S (24BCE10447)

# --- Input ---
PACKAGE=${1:-"vlc"}   # Default package = VLC

echo "================================================="
echo "        FOSS Package Inspection Report"
echo "================================================="
echo "Target Package   : $PACKAGE"
echo "-------------------------------------------------"

# --- Check if package is installed ---
if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "Status           : Installed ✔"
    
    # Fetch details
    VERSION=$(dpkg-query -W -f='${Version}\n' "$PACKAGE")
    SUMMARY=$(dpkg-query -W -f='${Description}\n' "$PACKAGE" | head -1)

    echo "Version          : $VERSION"
    echo "Description      : $SUMMARY"
else
    echo "Status           : Not Installed ❌"
fi

echo "-------------------------------------------------"
echo "Open Source Insight:"

# --- Philosophy section ---
case "$PACKAGE" in
    vlc)
        echo "VLC Media Player: Started as a student project in Paris, VLC became a global tool that plays almost any media format without restrictive licensing."
        ;;
    apache2|httpd)
        echo "Apache: The backbone of the web, showing how community collaboration can power most of the internet."
        ;;
    mysql|mysql-server)
        echo "MySQL: A widely used database that highlights how open source can coexist with commercial models."
        ;;
    firefox)
        echo "Firefox: A browser built to protect openness, privacy, and user control on the web."
        ;;
    git)
        echo "Git: Created by Linus Torvalds, it revolutionized version control and decentralized collaboration."
        ;;
    *)
        echo "$PACKAGE: A part of the open-source ecosystem contributing to shared knowledge and innovation."
        ;;
esac

echo "================================================="