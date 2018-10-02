mkdir ~/builds
cd ~/builds
git clone http://github.com/technologyclassroom/dotfiles
cd dotfiles/

cp jokes.txt ~/
cp nanorc /etc/nanorc
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
#cat bashrc >> /etc/bash.bashrc
#exec bash
