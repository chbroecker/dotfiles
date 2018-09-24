# dotfiles

# Download (renames it to make it 'hidden')

git clone git@github.com:chbroecker/dotfiles.git .dotfiles

## TODO
- [ ] TMUX: implement TMUX powerline tabs when TPM can't be loaded for some reason
- [ ] figure out what is actually needed for a working powerline font
- [ ] colors are weird. vim and tmux colors are different even though according to the code they are the same. Current fix is to change the black color in the tmux-onedark-theme.tmux file to #2c2527
- [ ] figure out how to reliably remap caps lock to ESC
- [ ] improve prompt
- [ ] is installing prompt automated yet??
- [ ] add docs for key mappings in different programs (vim, tmux, etc.)
- [ ] TMUX: quick window selection not working

## Features

### VIM
- [ ] add nicer Markdown support

## Sublime
* setting up the sublime CLI 
	* ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime


## Sources

* Dotfiles Tutorial 
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
* Prompt Tutorial 
https://www.howtogeek.com/307701/how-to-customize-and-colorize-your-bash-prompt/
* Add Color to ls command 
http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/



## Useful

* Changing your Hostname
	* sudo scutil --set HostName name-you-want
* Figuring out the names on the system
	* sudo scutil --get ComputerName "newname"
	* sudo scutil --get LocalHostName "newname"
	* sudo scutil --get HostName "newname"
* Symlink
	* ln -s ~/.dotfiles/runcom/.bash_profile ~/

# Ubuntu Setup

*  Remapping `CAPS-LOCK` to `CTRL`
	* in **/etc/default/keyboard** or in **/etc/default/console-setup**
	* change `XKBOPTIONS=""` to `XKBOPTIONS="ctrl:swapcaps"`
	* sudo dpkg-reconfigure -phigh console-setup
	* reboot
