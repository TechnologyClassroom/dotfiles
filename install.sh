#!/bin/bash

set -euo pipefail

# TODO Check if git is found.

mkdir -p ~/builds
mkdir -p ~/.config/i3

cd ~/builds
echo "Downloading TechnologyClassroom/dotfiles..."
git clone http://github.com/technologyclassroom/dotfiles
cd dotfiles/

echo "Installing i3 config..."
cp i3 ~/.config/i3/config
echo "Installing nano config..."
sudo cp nanorc /etc/nanorc
echo "Installing tmux config..."
cp tmux.conf ~/.tmux.conf
echo "Installing vim config..."
cp vimrc ~/.vimrc
#echo "Installing BASH config..."
#cat bashrc >> ~/.bashrc
#source ~/.bashrc

cd ~/builds
echo "Downloading TechnologyClassroom/hitme..."
git clone https://github.com/TechnologyClassroom/hitme
echo "Installing jokes.txt..."
cp hitme/jokes.txt ~/
