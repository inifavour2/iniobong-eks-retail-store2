#!/bin/bash


YOUR_NAME="Iniobong_favour_Pender-Atanaruno"
YOUR_EMAIL="ini.favour@gmail.com"
YOUR_GITHUB="inifavour2"

# Update in all markdown files
find . -type f -name "*.md" | while read file; do
    sed -i "s/\[Your Name\]/$YOUR_NAME/g" "$file"
    sed -i "s/\[Your Email\]/$YOUR_EMAIL/g" "$file"
    sed -i "s/\[Your GitHub Username\]/$YOUR_GITHUB/g" "$file"
done

echo "✅ Personal information updated!"
