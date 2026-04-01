#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarthak patil | Roll: 24BCY10017
# Course: Open Source Software
# Purpose: Loops through important system directories and
#          reports their permissions, owner, and disk usage

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "      DISK AND PERMISSION AUDITOR"
echo "========================================"
echo ""

# For loop - goes through each directory one by one
for DIR in "${DIRS[@]}"; do

    # Check if the directory actually exists before inspecting it
    if [ -d "$DIR" ]; then

        # Get permissions and owner using ls -ld
        # awk extracts specific columns from the output
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # Get directory size using du (disk usage)
        # 2>/dev/null hides permission error messages
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo " Directory  : $DIR"
        echo " Permissions: $PERMS"
        echo " Owner      : $OWNER"
        echo " Group      : $GROUP"
        echo " Size       : $SIZE"
        echo " ----------------------------------------"

    else
        # If directory doesn't exist, print a message and continue
        echo " Directory  : $DIR"
        echo " Status     : Does not exist on this system"
        echo " ----------------------------------------"
    fi

done

echo ""
echo "========================================"
echo "   GIT CONFIG DIRECTORY CHECK"
echo "========================================"
echo ""

# Git stores its config in /etc/gitconfig (system level)
# and ~/.gitconfig (user level) - let's check both
GIT_SYSTEM="/etc/gitconfig"
GIT_USER="$HOME/.gitconfig"

# Check system-wide git config file
if [ -f "$GIT_SYSTEM" ]; then
    # -f checks if it is a file (not directory)
    PERMS=$(ls -l "$GIT_SYSTEM" | awk '{print $1, $3, $4}')
    echo " Git System Config : $GIT_SYSTEM"
    echo " Permissions       : $PERMS"
else
    echo " Git System Config : $GIT_SYSTEM not found"
fi

echo ""

# Check user-level git config file
if [ -f "$GIT_USER" ]; then
    PERMS=$(ls -l "$GIT_USER" | awk '{print $1, $3, $4}')
    echo " Git User Config   : $GIT_USER"
    echo " Permissions       : $PERMS"
else
    echo " Git User Config   : $GIT_USER not found yet"
    echo " (This is created when you run 'git config' for first time)"
fi

echo ""
echo "========================================"
echo " Audit complete."
echo "========================================"
