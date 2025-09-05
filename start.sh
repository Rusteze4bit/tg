#!/bin/bash
# Install Python and pip if not already installed
if ! command -v pip &> /dev/null; then
    echo "Installing pip..."
    apt-get update && apt-get install -y python3-pip
    # Alternatively, for Alpine Linux:
    # apk add --no-cache python3 py3-pip
fi

# Install Python dependencies
pip3 install -r requirements.txt

# Run the bot
python3 bot.py
