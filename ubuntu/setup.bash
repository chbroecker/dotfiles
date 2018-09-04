# Installing essentials
sudo apt install vim tmux git cmake valgrind build-essential

# Installing the Unity Tweak Tool
sudo apt-get install unity-tweak-tool

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

# # Installing Sublime
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update
# sudo apt-get install sublime-text

# Installing Atom
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom
apm install file-icons

# Installing Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

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

