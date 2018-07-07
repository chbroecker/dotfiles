# Installing essentials
sudo apt install vim
sudo apt install tmux
sudo apt install git

# Installing the Unity Tweak Tool
sudo apt-get install unity-tweak-tool

# Installing the Arc-Theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme

# Installing the Paper Icon Theme
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get update
sudo apt-get install
sudo apt-get install unity-tweak-tool

# Switch to prefered themes
dconf write /org/gnome/desktop/interface/gtk-theme '"Arc-Dark"'
dconf write /org/gnome/desktop/interface/icon-theme '"Paper"'
dconf write /org/gnome/desktop/interface/cursor-theme '"Paper"'

# Installing Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Installing Atom
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get instal atom
