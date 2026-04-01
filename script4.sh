#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sarthak patil | Roll: 24BCY10017
# Course: Open Source Software
# Purpose: Reads a log file line by line, counts keyword
#          occurrences and prints matching lines

# --- Command line arguments ---
# $1 is the first argument passed when running the script
# $2 is the second argument (optional keyword, default is "error")
LOGFILE=$1
KEYWORD=${2:-"error"}

# Counter variable to track how many matches found
COUNT=0

echo "========================================"
echo "         LOG FILE ANALYZER"
echo "========================================"
echo ""

# Check if user provided a log file argument
if [ -z "$LOGFILE" ]; then
    # -z checks if a variable is empty
    echo " No log file specified."
    echo " Usage: ./script4.sh <logfile> [keyword]"
    echo " Example: ./script4.sh /var/log/dpkg.log error"
    echo ""
    # Use dpkg.log as default since it exists on Ubuntu
    LOGFILE="/var/log/dpkg.log"
    echo " Using default log file: $LOGFILE"
fi

echo ""

# Check if the log file actually exists
if [ ! -f "$LOGFILE" ]; then
    # ! -f means "file does NOT exist"
    echo " Error: File '$LOGFILE' not found."
    exit 1
fi

echo " Log File : $LOGFILE"
echo " Keyword  : $KEYWORD"
echo ""
echo "========================================"
echo " SCANNING LOG FILE..."
echo "========================================"
echo ""

# While read loop - reads the file one line at a time
# IFS= preserves whitespace, -r prevents backslash interpretation
while IFS= read -r LINE; do

    # Check if current line contains the keyword (case insensitive)
    # grep -iq = case insensitive and quiet (no output, just true/false)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment counter by 1 each time keyword is found
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# Print the final count
echo " Keyword '$KEYWORD' was found $COUNT times in:"
echo " $LOGFILE"
echo ""

# Show last 5 lines that match the keyword using grep and tail
echo "========================================"
echo " LAST 5 MATCHING LINES:"
echo "========================================"
echo ""

# grep -i = case insensitive search, tail -5 = show last 5 results
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "========================================"

# Check if no matches were found at all
if [ $COUNT -eq 0 ]; then
    echo " No matches found for '$KEYWORD'."
    echo " Try a different keyword."
else
    echo " Scan complete. $COUNT match(es) found."
fi

echo "========================================"
