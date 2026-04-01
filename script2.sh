#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sarthak  | Roll: 24BCY1007
# Course: Open Source Software
# Purpose: Checks if Git is installed, displays its details,
#          and prints a philosophy note using a case statement

# --- Define the package we are inspecting ---
PACKAGE="git"

echo "========================================"
echo "       FOSS PACKAGE INSPECTOR"
echo "========================================"
echo ""

# Check if the package is installed using dpkg (Ubuntu uses dpkg)
# dpkg -l lists installed packages, grep searches for our package
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo " Package  : $PACKAGE"
    echo " Status   : INSTALLED ✓"
    echo ""

    # Get the installed version using dpkg-query
    VERSION=$(dpkg-query -W -f='${Version}' $PACKAGE)
    echo " Version  : $VERSION"

    # Get the package description
    DESCRIPTION=$(dpkg-query -W -f='${Description}' $PACKAGE | head -1)
    echo " Summary  : $DESCRIPTION"

    # Get the package size
    SIZE=$(dpkg-query -W -f='${Installed-Size}' $PACKAGE)
    echo " Size     : ${SIZE} KB"

else
    # If package is not found, inform the user
    echo " Package  : $PACKAGE"
    echo " Status   : NOT INSTALLED ✗"
    echo " Run 'sudo apt install $PACKAGE' to install it."
fi

echo ""
echo "========================================"
echo "       OPEN SOURCE PHILOSOPHY NOTES"
echo "========================================"
echo ""

# Case statement - prints a philosophy note based on package name
# A case statement is like multiple if-else checks, cleaner to read
case $PACKAGE in
    git)
        echo " Git: Born from frustration, given to the world for free."
        echo " Linus Torvalds built Git in 2005 after a proprietary tool"
        echo " revoked its free license. Instead of paying, he built"
        echo " something better and shared it with everyone."
        ;;
    apache2)
        echo " Apache: The web server that built the open internet."
        echo " Powers millions of websites globally, completely free."
        ;;
    python3)
        echo " Python: A language shaped entirely by its community."
        echo " No single company owns it — everyone contributes."
        ;;
    vlc)
        echo " VLC: Built by students in Paris who just wanted to"
        echo " stream video. Now plays literally everything, for free."
        ;;
    firefox)
        echo " Firefox: A nonprofit's fight to keep the web open."
        echo " When IE dominated, Mozilla gave users a real choice."
        ;;
    *)
        # Default case if package name doesn't match any above
        echo " $PACKAGE: An open source tool that someone built"
        echo " and chose to share with the world freely."
        ;;
esac

echo ""
echo "========================================"
echo " Inspection complete."
echo "========================================"
