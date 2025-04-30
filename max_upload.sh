#!/bin/bash

# Install Python 3 (adjust for your distribution)
# Debian/Ubuntu:
sudo apt update
sudo apt install -y python3

# CentOS/RHEL:
# sudo yum update
# sudo yum install -y python3

# Fedora:
# sudo dnf update
# sudo dnf install -y python3

# macOS (using Homebrew):
# brew update
# brew install python@3


# Download the Python script from GitHub (replace with your URL)
github_url="https://raw.githubusercontent.com/username/repo/main/script.py" # Example URL
script_name="downloaded_script.py"  # Local filename

# Use wget or curl to download
wget -O "$script_name" "$github_url" || curl -o "$script_name" "$github_url"

# Check if the download was successful
if [ $? -ne 0 ]; then
  echo "Error downloading the script."
  exit 1
fi


# Make the script executable (if necessary)
chmod +x "$script_name"


# Run the downloaded script using Python 3
python3 "$script_name"

# Alternatively, if the script doesn't need execute permissions:
# python3 "$script_name"


# Optional: Clean up (remove the downloaded script)
# rm "$script_name"

echo "Script execution finished."
