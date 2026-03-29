#!/bin/bash
# Script 1: System Identity Report
# Author: Pranjal Gupta | Target: Python
# Concepts Used: Variables, Command Substitution, Output Formatting

# Gathering system data
OS_INFO=$(cat /etc/os-release | grep -E '^PRETTY_NAME=' | cut -d'"' -f2)
KERNEL_VER=$(uname -srv)
CURRENT_USER=$(whoami)
USER_HOME=$HOME
SYS_UPTIME=$(uptime -p)
NOW=$(date +"%Y-%m-%d %H:%M:%S")

# Outputting the formatted report
echo "+---------------------------------------------------+"
echo "|           OPEN SOURCE AUDIT - SYS INFO            |"
echo "+---------------------------------------------------+"
echo "Date & Time    : $NOW"
echo "Operating Sys  : $OS_INFO"
echo "Kernel Release : $KERNEL_VER"
echo "Active User    : $CURRENT_USER (Home: $USER_HOME)"
echo "System Uptime  : $SYS_UPTIME"
echo "+---------------------------------------------------+"
echo ">>> LICENSE NOTE: This operating system is a GNU/Linux"
echo ">>> distribution, fundamentally protected under the GNU"
echo ">>> General Public License (GPL) and similar freedoms."
echo "+---------------------------------------------------+"
