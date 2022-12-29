#!/bin/bash
# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

# Clear the screen
clear

# Check if the user has provided the necessary arguments
if [ $# -lt 3 ]; then
    echo "Usage: anonfiles.sh -k API_KEY -f FILE_PATH [-h]"
    exit 1
fi

# Parse the arguments
while getopts ":k:f:h" opt; do
    case $opt in
        k) api_key=$OPTARG ;;
        f) file_path=$OPTARG ;;
        h)
            echo "Usage: anonfiles.sh -k API_KEY -f FILE_PATH [-h]"
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument."
            exit 1
            ;;
    esac
done

# Check if the file exists
if [ ! -f $file_path ]; then
    echo "Error: file not found."
    exit 1
fi

# Upload the file
response=$(curl -X POST https://api.anonfiles.com/upload -H "Authorization: Bearer $api_key" -F "file=@$file_path")

# Extract the URL of the uploaded file from the response
url=$(echo $response | jq -r '.data.file.url.short')

# Print the URL
echo "File uploaded successfully to $url"
