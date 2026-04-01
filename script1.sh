#!/bin/bash
# Script 1: System Identity Report
# Author: Shurti Sharma | Roll: 24BAI10529
# Course: Open Source Software
# Purpose: Displays key information about the Linux system

# --- Variables ---
STUDENT_NAME="Sarthak patil"
ROLL_NO="24BCY10017"
SOFTWARE_CHOICE="Git"

# --- Collect system information using command substitution ---
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATETIME=$(date '+%d %B %Y, %H:%M:%S')

# --- Display the report ---
echo "========================================"
echo "       OPEN SOURCE AUDIT REPORT"
echo "========================================"
echo ""
echo " Student  : $STUDENT_NAME"
echo " Roll No  : $ROLL_NO"
echo " Software : $SOFTWARE_CHOICE"
echo ""
echo "========================================"
echo "         SYSTEM INFORMATION"
echo "========================================"
echo ""

# Print distro name
echo " Distribution : $DISTRO"

# Print kernel version
echo " Kernel       : $KERNEL"

# Print current logged in user
echo " User         : $USER_NAME"

# Print user's home directory
echo " Home Dir     : $HOME_DIR"

# Print how long system has been running
echo " Uptime       : $UPTIME"

# Print current date and time
echo " Date & Time  : $DATETIME"

echo ""
echo "========================================"
echo "         LICENSE INFORMATION"
echo "========================================"
echo ""

# Git is licensed under GPL v2 - GNU General Public License version 2
echo " Software     : Git"
echo " License      : GNU General Public License v2 (GPL v2)"
echo " What it means: You are free to use, study, modify and"
echo "                distribute Git. Any modifications must"echo "                also be shared under GPL v2."
echo ""
echo " The OS running this system (Ubuntu/Linux) is also"
echo " licensed under GPL v2 — meaning the entire environment"
echo " you are working in is free and open source."
echo ""
echo "========================================"
echo " Audit complete. Have a good day!"
echo "========================================"

chmod +x script1.sh
./script1.sh

