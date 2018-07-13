DOTFILES_DIR="$HOME/.dotfiles"

# Bash-completion
# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Source all subdirectories of system
shopt -s dotglob nullglob
for file in $DOTFILES_DIR/system/*; 
do 
	source $file; 
done;
# added by Anaconda3 5.1.0 installer
export PATH="/Users/chbroecker/anaconda3/bin:$PATH"
