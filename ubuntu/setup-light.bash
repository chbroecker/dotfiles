# Installing essentials
sudo apt install vim tmux git cmake valgrind build-essential

# Installing the Arc-Theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme

# Installing the Paper Icon Theme
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get update
sudo apt-get install paper-icon-theme

# Switch to prefered themes
dconf write /org/gnome/desktop/interface/gtk-theme '"Arc-Dark"'
dconf write /org/gnome/desktop/interface/icon-theme '"Paper"'
dconf write /org/gnome/desktop/interface/cursor-theme '"Paper"'

# Installing the current vim and vundle
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Installing Dotfiles
git clone git@github.com:chbroecker/dotfiles.git .dotfiles
ln -s ~/.dotfiles/tmux/.tmux.conf ~/
ln -s ~/.dotfiles/vim/.vimrc ~/

# Installing Powerline Font
# @TODO figure out which of these is actually needed
cd ~
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir .fonts
mkdir -p .config/fontconfig/conf.d
fc-cache -vf ~/.fonts/ 	# clearing font cache
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d
sudo cp ~/.dotfiles/resources/powerline-symbols.ttf /usr/share/fonts/truetype/

# Setting up Tmux to use the TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
