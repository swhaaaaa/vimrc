if [ -e ~/.vim_runtime ]; then
	echo "remove awesom vimrc"
	rm -rf ~/.vim_runtime/autoload ~/.vim_runtime/plugged
	rm ~/.vim*
	
fi


echo "Uninstalled the Ultimate Vim configuration....."
