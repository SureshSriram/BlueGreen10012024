#!/bin/bash

url="http://192.168.58.2:32631"

# Use a for loop to make HTTP requests 1000 times
for ((i=1; i<=3000; i++)); do
    # Make an HTTP request to the specified URL and redirect the output to /dev/null
    curl -s "$url" > /dev/null

    # Optionally, print a message for each iteration (comment or remove if not needed)
    echo "Request $i completed"

# Percentage of traffic to send to the blue environment (adjust as needed)
blue_percentage=0

# Generate a random number between 1 and 100
random_number=$((RANDOM % 100 + 1))

# Determine the environment based on the random number
if [ "$random_number" -le "$blue_percentage" ]; then
    echo "Send traffic to Blue environment"
    # Add commands to deploy or route traffic to the Blue environment
else
    echo "Send traffic to Green environment"
    # Add commands to deploy or route traffic to the Green environment
fi
done
