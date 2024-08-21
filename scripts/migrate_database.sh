#!/bin/bash

# Create log directory if it doesn't exist
LOG_DIR="/home/ubuntu/django-app/log"
mkdir -p "$LOG_DIR"

# Log file
LOG_FILE="$LOG_DIR/migrate_database.log"

# Start logging
echo "Starting migrate_database.sh" > "$LOG_FILE"

# Change Directory and activate virtual environment
cd /home/ubuntu/django-app
source venv/bin/activate

# Run migrations and log output
{
    echo "Running database migrations..."
    python manage.py migrate
} >> "$LOG_FILE" 2>&1

# End logging
echo "Finished migrate_database.sh" >> "$LOG_FILE"
