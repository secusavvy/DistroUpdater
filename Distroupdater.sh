#!/bin/bash

LOGFILE="/var/log/update_script.log"

echo "Starting update script at $(date)" | tee -a $LOGFILE

# For Arch Linux
if [ -d /etc/pacman.d ]; then
    echo "Detected Arch Linux. Running pacman update..." | tee -a $LOGFILE
    if sudo pacman -Syu >> $LOGFILE 2>&1; then
        echo "pacman update completed successfully." | tee -a $LOGFILE
    else
        echo "pacman update failed. Check the log file for details." | tee -a $LOGFILE
    fi
fi

# For Debian
if [ -d /etc/apt ]; then
    echo "Detected Debian-based system. Running apt update and upgrade..." | tee -a $LOGFILE
    if sudo apt update >> $LOGFILE 2>&1; then
        echo "apt update completed successfully." | tee -a $LOGFILE
    else
        echo "apt update failed. Check the log file for details." | tee -a $LOGFILE
    fi

    if sudo apt dist-upgrade >> $LOGFILE 2>&1; then
        echo "apt dist-upgrade completed successfully." | tee -a $LOGFILE
    else
        echo "apt dist-upgrade failed. Check the log file for details." | tee -a $LOGFILE
    fi
fi

echo "Update script finished at $(date)" | tee -a $LOGFILE
