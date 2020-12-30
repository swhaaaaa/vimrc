if [ -e ~/.vim_runtime ]; then
	echo "rm -rf ~/.vim_runtime"
	rm -rf ~/.vim_runtime
fi
ln -s $PWD ~/.vim_runtime
cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

#touch /usr/local/share/vimctagsctags.cnf
curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [  ! -d ~/.vim_runtime/plugged ]; then
	echo "mkdir ~/.vim_runtime/plugged"
	mkdir ~/.vim_runtime/plugged
fi


echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
