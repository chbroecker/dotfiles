# dotfiles


## Sublime
* setting up the sublime CLI 
	* ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime


## Sources

* Dotfiles Tutorial https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
* Prompt Tutorial http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/



## Useful

* Changing your Hostname
	* sudo scutil --set HostName name-you-want
* Figuring out the names on the system
	* sudo scutil --get ComputerName "newname"
	* sudo scutil --get LocalHostName "newname"
	* sudo scutil --get HostName "newname"