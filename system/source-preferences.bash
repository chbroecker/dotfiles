DOTFILES_DIR="$HOME/.dotfiles"

shopt -s dotglob nullglob
for file in $DOTFILES_DIR/system/*;
do
	source $file;
done;
