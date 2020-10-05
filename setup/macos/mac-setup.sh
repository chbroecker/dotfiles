# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install git wget vim tmux

# Clone dotfiles
git clone git@github.com:chbroecker/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/tmux/.tmux.conf ~/
ln -s ~/.dotfiles/vim/.vimrc ~/

# Setup Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Setup Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# Installing keyboard improvements
brew cask install hammerspoon
brew cask install karabiner-elements
git clone git@github.com:jasonrudolph/keyboard.git ~/.keyboard
cd ~/.keyboard
script/setup
cd

# Installing desired Terminal font
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf

# Installing other programs and apps
brew cask install iterm2
brew cask install spotify
brew cask install visual-studio-code
brew cask install 1password
brew cask install obsidian
brew cask install discord
brew cask install libreoffice
brew cask install vlc

brew install mas

mas install 441258766	# Magnet
mas install 904280696	# Things3
mas install 1435957248	# Drafts
mas install 409203825	# Numbers
mas install 409183694	# Keynote
mas install 409201541	# Pages

