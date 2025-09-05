#!/bin/bash
# Exit on any error
set -e

# Check if Python is available and determine the correct command
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
else
    echo "Python is not installed. Installing Python..."
    apt-get update && apt-get install -y python3 python3-pip
    PYTHON_CMD="python3"
fi

# Check if virtual environment exists, create if not
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    $PYTHON_CMD -m venv venv
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install all required dependencies
echo "Installing dependencies..."
pip install requests websocket-client

# Run the bot
echo "Starting bot..."
python bot.py
