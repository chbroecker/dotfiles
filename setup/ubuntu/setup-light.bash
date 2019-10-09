# Installing essentials
sudo apt install tmux git cmake valgrind build-essential fonts-powerline

# Installing Dotfiles
git clone git@github.com:chbroecker/dotfiles.git .dotfiles
ln -s ~/.dotfiles/tmux/.tmux.conf ~/
ln -s ~/.dotfiles/vim/.vimrc ~/

echo "source ~/dotfiles/system/source-preferences.bash" >> ~/.bashrc
source ~/.bashrc

# Installing the current vim and vundle
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Setting up Tmux to use the TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
