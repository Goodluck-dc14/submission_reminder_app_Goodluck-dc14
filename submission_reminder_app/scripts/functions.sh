#!/bin/bash

# Function to check submissions
check_submissions() {
    echo "Checking submissions..."

    # Check if submissions.txt file exists
    if [ ! -f ./submission_reminder_app/submissions.txt ]; then
        echo "Error: submissions.txt file not found!"
        return
    fi

    # Read and process the submissions file
    while IFS=, read -r student assignment deadline; do
        # Calculate the remaining days until the deadline
        deadline_date=$(date -d "$deadline" +%s)
        current_date=$(date +%s)
        remaining_days=$(( (deadline_date - current_date) / 86400 ))

        # Print the submission status
        if [ $remaining_days -ge 0 ]; then
            echo "Student: $student, Assignment: $assignment, Deadline: $deadline ($remaining_days days remaining)"
        else
            echo "Student: $student, Assignment: $assignment, Deadline: $deadline (Deadline passed)"
        fi
    done < ./submission_reminder_app/submissions.txt
}
