#!/bin/bash
# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install all required dependencies
pip install requests websocket-client

# Run the bot
python bot.py
