DOTFILES_DIR="$HOME/.dotfiles"

# Source all subdirectories of system
shopt -s dotglob nullglob
for file in $DOTFILES_DIR/system/*; 
do 
	source $file; 
done;