# Check for pip3 first, then pip
if command -v pip3 &> /dev/null; then
    pip3 install -r requirements.txt
elif command -v pip &> /dev/null; then
    pip install -r requirements.txt
else
    echo "Error: pip not found. Please install pip."
    exit 1
fi
