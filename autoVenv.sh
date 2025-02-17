#!/bin/bash

# Default suggested path
DEFAULT_PATH="$HOME/your_development_folder_here"

# Ask for the folder location with a default suggestion
read -p "Enter the path where the project should be created (default: $DEFAULT_PATH): " PROJECT_PATH
PROJECT_PATH=${PROJECT_PATH:-$DEFAULT_PATH}  # Use default if input is empty

# Ask for the project name
read -p "Enter the project folder name: " FOLDER_NAME

# Full path to the project
FULL_PATH="$PROJECT_PATH/$FOLDER_NAME"

# Create the project directory
mkdir -p "$FULL_PATH"

# Navigate into the project folder
cd "$FULL_PATH" || exit

# Create the virtual environment
python3 -m venv venv

# Check if the virtual environment was created successfully
if [ ! -d "venv" ]; then
    echo "Error: Virtual environment could not be created."
    exit 1
fi

echo "✅ Virtual environment created inside $FULL_PATH"

# Detect OS and show activation instructions
OS_TYPE=$(uname)

if [[ "$OS_TYPE" == "Darwin" ]] || [[ "$OS_TYPE" == "Linux" ]]; then
    # Activate for Mac/Linux
    source venv/bin/activate
    echo "✅ Virtual environment activated."
elif [[ "$OS_TYPE" == "MINGW64_NT"* ]] || [[ "$OS_TYPE" == "MSYS_NT"* ]] || [[ "$OS_TYPE" == "CYGWIN_NT"* ]]; then
    echo "🔹 Windows detected. Run the following command to activate manually:"
    echo "    venv\Scripts\activate"
else
    echo "⚠️ OS not recognized. Please activate the virtual environment manually."
fi

