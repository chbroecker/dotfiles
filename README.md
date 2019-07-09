# dotfiles

# Download (renames it to make it 'hidden')

git clone git@github.com:chbroecker/dotfiles.git .dotfiles

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
	* `sudo scutil --set HostName name-you-want`
* Figuring out the names on the system
	* `sudo scutil --get ComputerName "newname"`
	* `sudo scutil --get LocalHostName "newname"`
	* `sudo scutil --get HostName "newname"`
* Symlink
	* ln -s ~/.dotfiles/runcom/.bash_profile ~/

# Ubuntu Setup

*  Remapping `CAPS-LOCK` to `CTRL`
	* in **/etc/default/keyboard** or in **/etc/default/console-setup**
	* change `XKBOPTIONS=""` to `XKBOPTIONS="ctrl:swapcaps"`
	* sudo dpkg-reconfigure -phigh console-setup
	* reboot
	
## Miscellaneous
* Show hidden files in Finder on macOS: <kbd>CMD</kbd> + <kbd>shift</kbd> + <kbd>.</kbd>
