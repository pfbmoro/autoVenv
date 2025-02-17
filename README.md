# Automated Virtual Environment Setup Script

This Bash script automates the process of setting up a Python virtual environment inside a new project folder. It asks for a directory location, creates the folder, initializes a virtual environment (`venv`), and activates it automatically (on Mac/Linux) or provides activation instructions (for Windows users).

### **What This README Covers:**
✅ **Explains what the script does**  
✅ **Provides clear installation and usage steps**  
✅ **Includes troubleshooting tips**  
✅ **Shows activation commands for different OS**  

## Features
✅ **Prompts for a project folder name**  
✅ **Asks where to create the project (suggests `Users/username/your-development-folder-name/`)**  
✅ **Creates the folder automatically**  
✅ **Initializes a virtual environment (`venv`)**  
✅ **Activates the virtual environment (Mac/Linux) or provides Windows instructions**  
✅ **Works on Mac, Linux, and Windows (Git Bash, WSL, Cygwin)**  

---

## 🔧 Installation & Usage

1. **Download the script** or copy and paste the contents into a new file named `setup_venv.sh`.  
2. **Make the script executable**:
   ```sh
   chmod +x setup_venv.sh
3. **Run the script**
   ```sh
   ./setup_venv.sh
4. **Follow the prompts:**
  Enter the directory path where the project should be created (default: Users/paulo/WebDev/).
  Enter the project folder name.

## 🎯 Activation Instructions
   Mac/Linux: The script automatically activates the virtual environment.
   
   Windows: If you're using Git Bash or Command Prompt, activate manually with:
   ```sh
   venv\Scripts\activate

**## 🛠️ Troubleshooting**
"Command not found: python3"
Ensure Python is installed. Run python3 --version to check. Install it from python.org if needed.

"Permission denied" when running the script
Try running:

```sh
chmod +x setup_venv.sh

Then execute it again.

**##🚀 Next Steps
After setting up the virtual environment, you can start installing dependencies:

```sh
pip install -r requirements.txt
Or begin coding inside your project folder.

Enjoy coding!
