#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./04_log_analyzer.sh [LOG_FILE] [SEARCH_TERM]
# Concepts Used: while-read loop, input arguments, conditionals, grep, tail

FILE_PATH=$1
SEARCH_TERM=${2:-"error"} # Defaults to 'error' if no second argument is provided
MATCH_COUNT=0

# Do-while style loop: keep asking until a valid file is provided
while [ ! -s "$FILE_PATH" ]; do
    echo "Wait! The file '$FILE_PATH' is missing or empty."
    read -p "Please provide a valid absolute path to a log file (e.g., /var/log/dpkg.log): " FILE_PATH
done

echo "Scanning $FILE_PATH for the term: '$SEARCH_TERM'..."
echo "--------------------------------------------------"

# Read the file line by line
while IFS= read -r log_line; do
    # Check if the line contains the term (case-insensitive)
    if echo "$log_line" | grep -iq "$SEARCH_TERM"; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
    fi
done < "$FILE_PATH"

echo "[RESULT] Found $MATCH_COUNT occurrences of '$SEARCH_TERM'."

if [ "$MATCH_COUNT" -gt 0 ]; then
    echo "--------------------------------------------------"
    echo "Here are the 5 most recent occurrences:"
    grep -i "$SEARCH_TERM" "$FILE_PATH" | tail -n 5
fi
echo "--------------------------------------------------"
