# dotfiles

# Download (renames it to make it 'hidden')

git clone git@github.com:chbroecker/dotfiles.git .dotfiles

## Useful

### Git
* git config --global user.name "name"
* git config --global user.email email
    
* Changing your Hostname
	* `sudo scutil --set HostName name-you-want`
* Figuring out the names on the system
	* `sudo scutil --get ComputerName "newname"`
	* `sudo scutil --get LocalHostName "newname"`
	* `sudo scutil --get HostName "newname"`

# Ubuntu Setup

* `bash ~/.dotfiles/setup/ubuntu/setup-light.bash`
	* adds `source ~/.dotfiles/system/source-preferences.bash` to `.bashrc`
	* sets up vim and tmux
	* installs *SauceCodePro Nerd Font Mono* which is needed for devicons to work
*  Remapping `CAPS-LOCK` to `CTRL`
	* in **/etc/default/keyboard** or in **/etc/default/console-setup**
	* change `XKBOPTIONS=""` to `XKBOPTIONS="ctrl:swapcaps"`
	* sudo dpkg-reconfigure -phigh console-setup
	* reboot

# macOS
* no complete/good setup script is available at the moment
* to get sourcing working add `source ~/.dotfiles.system/source-preferences.bash` to `.bash_profile`

## Miscellaneous
* Show hidden files in Finder on macOS: <kbd>CMD</kbd> + <kbd>shift</kbd> + <kbd>.</kbd>

# Sources 
* Dotfiles Tutorial 
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
* Prompt Tutorial 
https://www.howtogeek.com/307701/how-to-customize-and-colorize-your-bash-prompt/
* Add Color to ls command 
http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
