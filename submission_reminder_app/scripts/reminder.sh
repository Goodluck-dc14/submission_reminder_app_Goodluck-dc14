#!/bin/bash

# Source the config and functions
source ./submission_reminder_app/config.env
source ./submission_reminder_app/scripts/functions.sh

echo "Assignment:"
echo "Days remaining to submit: $DAYS days"
echo "--------------------------------------------"

# Call the function to check submissions
check_submissions
