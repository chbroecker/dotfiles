sudo apt install tmux git vim fonts-powerline

git clone https://github.com/chbroecker/dotfiles.git .dotfiles

ln -s ~/.dotfiles/tmux/.tmux.conf ~/
ln -s ~/.dotfiles/vim/.vimrc ~/

echo "source ~/.dotfiles/system/source-preferences.bash" >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

bash ~/.dotfiles/setup/ubuntu/install-fonts.bash
