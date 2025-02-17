# Automated Virtual Environment Setup Script

This Bash script automates the process of setting up a Python virtual environment inside a new project folder. It asks for a directory location, creates the folder, initializes a virtual environment (`venv`), and activates it automatically (on Mac/Linux) or provides activation instructions (for Windows users).

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
