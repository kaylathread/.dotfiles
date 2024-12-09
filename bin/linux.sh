#!/bin/bash
# Check if the system is Linux
if [ "$(uname)" != "Linux" ]; then
  echo "Error: This script only works on Linux systems." >> linuxsetup.log
  exit 1
fi

# Create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# If the .nanorc file exists, rename it to .bup_nanorc
if [ -f ~/.nanorc ]; then
  mv ~/.nanorc ~/.bup_nanorc
  echo "The .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
fi

# Copy the content of etc/nanorc to the home directory as .nanorc
cp ./etc/nanorc ~/.nanorc

# Add the line to source bashrc_custom to the end of .bashrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc

