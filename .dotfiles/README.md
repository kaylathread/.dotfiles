##### Dotfiles Setup

the repository contains configuration files for customizing
##### Files

- **.nanorc**: Configures the Nano text editor with syntax highlighting.
- **.bashrc_custom**: Custom Bash configurations with environment variables, aliases, and functions.
- **linux.sh**: A script that sets up the environment (creates directories, copies files, etc.).
- **cleanup.sh**: A script that reverses the changes made by `linux.sh`.
- **Makefile**: Automates the process to run the setup or cleanup scripts.

##### How to Use
1. Clone the repository
   git clone https://github.com/<username>/.dotfiles.git
2. Run setup 
   make 
3. Undo 
   make clean 
