#!/bin/bash

# Create main application directory
mkdir -p submission_reminder_app/{bin,logs,scripts}

# Create necessary files inside the directory
touch submission_reminder_app/config.env
touch submission_reminder_app/logs/app.log
touch submission_reminder_app/scripts/reminder.sh
touch submission_reminder_app/scripts/functions.sh
touch submission_reminder_app/submissions.txt

# Copy content to submissions.txt (adding 5 more student records)
echo -e "John Doe, Assignment 1, 2024-10-01\nJane Smith, Assignment 2, 2024-10-05\nChris Johnson, Assignment 3, 2024-10-10\nAlex White, Assignment 4, 2024-10-15\nEmily Brown, Assignment 5, 2024-10-20" >> submission_reminder_app/submissions.txt

echo "Environment setup complete."

