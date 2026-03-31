#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rajkumar S (24BCE10447) | Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

echo "================================================="
echo "           Log File Analysis Report"
echo "================================================="

# --- Validate input file (do-while style loop) ---
while true; do
    if [ -z "$LOGFILE" ]; then
        read -p "Enter log file path: " LOGFILE
        continue
    fi

    if [ ! -f "$LOGFILE" ]; then
        echo "File not found: $LOGFILE"
        read -p "Try again (or type 'exit'): " LOGFILE
        [ "$LOGFILE" = "exit" ] && exit 1
        continue
    fi

    if [ ! -s "$LOGFILE" ]; then
        echo "File is empty: $LOGFILE"
        read -p "Enter a non-empty file (or type 'exit'): " LOGFILE
        [ "$LOGFILE" = "exit" ] && exit 1
        continue
    fi

    break
done

echo "Analyzing file   : $LOGFILE"
echo "Searching for    : '$KEYWORD'"
echo "-------------------------------------------------"

# --- Count keyword occurrences ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total Matches    : $COUNT"
echo "-------------------------------------------------"

# --- Display last matches ---
if [ "$COUNT" -gt 0 ]; then
    echo "Last 5 matching entries:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    echo "No matching entries found."
fi

echo "================================================="