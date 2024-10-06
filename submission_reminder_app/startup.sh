#!/bin/bash

echo "Starting the submission reminder app..."

# Source the config file
source ./submission_reminder_app/config.env

# Log the startup
echo "$(date) - Reminder app started" >> ./submission_reminder_app/logs/app.log

# Run the reminder script
./submission_reminder_app/scripts/reminder.sh

