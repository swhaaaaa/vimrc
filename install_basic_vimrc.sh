if [ -e ~/.vim_runtime ]; then
	echo "rm -rf ~/.vim_runtime"
	rm -rf ~/.vim_runtime
fi
ln -s $PWD ~/.vim_runtime

cd ~/.vim_runtime
cat ~/.vim_runtime/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
