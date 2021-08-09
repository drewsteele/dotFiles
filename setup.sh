echo "Setting up dot files"
NOW=$(date +'%d%m%y%H%M%S')

BKP_DIR=$HOME/.dotfile_bkps
mkdir -p $BKP_DIR
echo "Any existing dotfiles will be backed up to $BKP_DIR/<FILE>_bkp_$NOW"

echo "Updating git submodules for vim plugins"

git submodule init .vim/pack/*/start
git submodule update .vim/pack/*/start

DOTFILES=".vim .bashrc .tmux.conf .vimrc"

for FILE in $DOTFILES; do 
	if [ -f $HOME/$FILE ]; then
		echo "Backing up $FILE"
		mv $HOME/$FILE $BKP_DIR/$FILE_bkp_$NOW
	fi
	echo "Copying $FILE to $HOME"
	cp -R $FILE $HOME/.
done

echo "All done - restart shell to take effect"
