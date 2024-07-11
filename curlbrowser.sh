!/bin/bash

# Ask for a URL
echo "Enter a URL: "
read url

# Use curl to fetch the URL
html=$(curl -s -k "$url")

# Open the HTML in the default web browser
echo "$html" | w3m -dump -T text/html
