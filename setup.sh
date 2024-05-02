#!/bin/bash

# Install VS Code (adapt for your specific OS)
# Example for Ubuntu:
sudo snap install code --classic

# Install extensions from the list
cat extensions.list | xargs -L 1 code --install-extension

# Copy settings
cp settings.json $HOME/.config/Code/User/settings.json

echo "VS Code has been set up with your extensions and settings."
