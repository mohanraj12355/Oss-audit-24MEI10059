#!/bin/bash
# Script 1: System Identity Report
# Author: Rajkumar S | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Rajkumar S"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
USER_HOME=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%d %B %Y, %I:%M:%S %p')

# Get Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$PRETTY_NAME
else
    DISTRO="Unknown Linux Distribution"
fi

# License message
LICENSE_MSG="Linux is built on open-source principles. The kernel is licensed under GPLv2, ensuring freedom to use, modify, and share."

# --- Display ---
echo "================================================="
echo "        Open Source System Report"
echo "================================================="
echo "Student Name     : $STUDENT_NAME"
echo "Chosen Software  : $SOFTWARE_CHOICE"
echo "-------------------------------------------------"
echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Logged-in User   : $USER_NAME"
echo "Home Directory   : $USER_HOME"
echo "Current Date     : $DATE_TIME"
echo "System Uptime    : $UPTIME"
echo "-------------------------------------------------"
echo "About Open Source:"
echo "$LICENSE_MSG"
echo "================================================="