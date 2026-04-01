#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sarthak patil | Roll: 24BCY10017
# Course: Open Source Software
# Purpose: Asks the user 3 questions interactively and generates
#          a personalised open source philosophy statement,
#          then saves it to a .txt file

echo "========================================"
echo "    OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================"
echo ""
echo " Answer three questions to generate"
echo " your personal open source manifesto."
echo ""
echo "========================================"
echo ""

# read command takes input from the user and stores it in a variable
# -p flag lets us show a prompt message on the same line
read -p " 1. Name one open-source tool you use every day: " TOOL

echo ""

# Store the user's answer about what freedom means to them
read -p " 2. In one word, what does 'freedom' mean to you? " FREEDOM

echo ""

# Store what the user would build and share freely
read -p " 3. Name one thing you would build and share freely: " BUILD

echo ""

# Get current date in a readable format
DATE=$(date '+%d %B %Y')

# Get current username
USER_NAME=$(whoami)

# Define the output filename using the username
# This demonstrates string concatenation in bash
OUTPUT="manifesto_${USER_NAME}.txt"

echo "========================================"
echo " Generating your manifesto..."
echo "========================================"
echo ""

# Write the manifesto to a file using > (overwrite) and >> (append)
# > creates the file fresh, >> adds lines to it

# Write header to file
echo "============================================" > "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo " Author : $USER_NAME" >> "$OUTPUT"
echo " Date   : $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Write the personalised manifesto paragraph using their answers
# This demonstrates string concatenation - combining variables with text
echo " Every day, I rely on $TOOL — a tool that exists" >> "$OUTPUT"
echo " because someone chose to build it openly and share" >> "$OUTPUT"
echo " it with the world for free. To me, freedom means" >> "$OUTPUT"
echo " $FREEDOM. That one word captures why open source" >> "$OUTPUT"
echo " matters — it is not just about software, it is about" >> "$OUTPUT"
echo " the right to use, study, change, and share the tools" >> "$OUTPUT"
echo " that shape our lives." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo " If I could build anything and give it away freely," >> "$OUTPUT"
echo " I would build $BUILD. Not to make money from it," >> "$OUTPUT"
echo " but because the best ideas grow when they are shared." >> "$OUTPUT"
echo " Open source taught me that knowledge is not diminished" >> "$OUTPUT"
echo " by sharing — it multiplies." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo " I stand on the shoulders of every developer who" >> "$OUTPUT"
echo " chose openness over profit. This is my commitment" >> "$OUTPUT"
echo " to carry that forward." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo " End of Manifesto" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"

# alias concept demonstrated via comment:
# In bash, you can create shortcuts for commands using aliases
# For example: alias show='cat manifesto_${USER_NAME}.txt'
# This would let you type 'show' instead of the full cat command

echo ""
echo " Manifesto saved to: $OUTPUT"
echo ""
echo "========================================"
echo " HERE IS YOUR MANIFESTO:"
echo "========================================"
echo ""

# Display the saved file using cat
cat "$OUTPUT"
