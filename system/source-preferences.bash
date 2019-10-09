DOTFILES_DIR="$HOME/.dotfiles"

shopt -s dotglob nullglob
for file in $DOTFILES_DIR/system/preferences/*;
do
	source $file;
done;
