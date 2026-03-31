#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rajkumar S (24BCE10447)

# --- Alias (concept demonstration) ---
shopt -s expand_aliases
alias header='echo "========== Open Source Manifesto =========="'

echo "================================================="
echo "        Open Source Manifesto Generator"
echo "================================================="
echo "Answer the following questions to generate your manifesto."
echo "-------------------------------------------------"

# --- User Input ---
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share openly? " BUILD

# --- System Info ---
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT_FILE="manifesto_${USER_NAME}.txt"

echo "-------------------------------------------------"
echo "Generating your personalized manifesto..."
echo "-------------------------------------------------"

# --- Write to file ---
header > "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "Date: $DATE" >> "$OUTPUT_FILE"
echo "Author: $USER_NAME" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "On this day, I reaffirm my belief in the open-source philosophy." >> "$OUTPUT_FILE"
echo "Tools like $TOOL remind me that collaboration drives innovation." >> "$OUTPUT_FILE"
echo "To me, freedom means '$FREEDOM'." >> "$OUTPUT_FILE"
echo "I aspire to build and share $BUILD so that others can learn, adapt, and grow." >> "$OUTPUT_FILE"
echo "Together, we build upon each other's work and move technology forward." >> "$OUTPUT_FILE"

# --- Display Output ---
echo ""
echo "Manifesto successfully saved to: $OUTPUT_FILE"
echo "-------------------------------------------------"
echo "Here is your manifesto:"
echo "-------------------------------------------------"

cat "$OUTPUT_FILE"

echo "================================================="