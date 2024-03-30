#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <URL> <JSON_FILE>"
    exit 1
fi

# Assign arguments to variables
URL=$1
JSON_FILE=$2

# Check if the JSON file exists
if [ ! -f "$JSON_FILE" ]; then
    echo "JSON file not found: $JSON_FILE"
    exit 1
fi

# Check if the JSON content is valid
if ! jq . "$JSON_FILE" >/dev/null 2>&1; then
    echo "Not a valid JSON"
    exit 1
fi

# Send the JSON file in the body of the POST request using cURL
curl -sX POST -H "Content-Type: application/json" -d @"$JSON_FILE" "$URL"

