#!/bin/bash

# --- Input Validation ---
LOG_FILE=$1

# Check if the user provided a log file path
if [ -z "$LOG_FILE" ]; then
    echo "Error: Please provide a log file path."
    echo "Usage: $0 <log-file>"
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' not found."
    exit 1
fi

echo "Analyzing log file: $LOG_FILE"
echo "=============================="


# --- Requirement 1: Top 5 IP Addresses ---
echo ""
echo "Top 5 IP addresses with the most requests:"
awk '{ print $1 }' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5


# --- Requirement 2: Top 5 Most Requested Paths ---
echo ""
echo "Top 5 most requested paths:"
awk '{ print $7 }' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5


# --- Requirement 3: Top 5 Response Status Codes ---
echo ""
echo "Top 5 response status codes:"
awk '{ print $9 }' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5


# --- Requirement 4: Top 5 User Agents ---
echo ""
echo "Top 5 user agents:"
awk -F'"' '{ print $6 }' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
