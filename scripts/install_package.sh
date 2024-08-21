#!/bin/bash

# Create log directory if it doesn't exist
LOG_DIR="/home/ubuntu/django-app/log"
mkdir -p "$LOG_DIR"

# Log file
LOG_FILE="$LOG_DIR/install_package.log"

# Start logging
echo "Starting install_package.sh" > "$LOG_FILE"

# Update package list and install dependencies
{
    echo "Updating package list..."
    apt-get update -y

    echo "Adding deadsnakes PPA..."
    sudo add-apt-repository ppa:deadsnakes/ppa -y

    echo "Installing Python 3.8 and venv..."
    sudo apt install -y python3.8 python3.8-venv
} >> "$LOG_FILE" 2>&1

# End logging
echo "Finished install_package.sh" >> "$LOG_FILE"
