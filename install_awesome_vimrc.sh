if [ -e ~/.vim_runtime ]; then
	echo "rm -rf ~/.vim_runtime"
	rm -rf ~/.vim_runtime
fi
ln -s $PWD ~/.vim_runtime
cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_install.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

#touch /usr/local/share/vimctagsctags.cnf
echo "curl plug.vim"
curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim_runtime/autoload/pathogen.vim --create-dirs https://tpo.pe/pathogen.vim

# .ycm_extra_conf.py
echo "curl .ycm_extra_conf.py"
curl -fLo ~/.ycm_extra_conf.py https://raw.githubusercontent.com/HmyBmny/vimrc/master/ycm_extra_conf.py

if [  ! -d ~/.vim_runtime/plugged_forked ]; then
	echo "mkdir ~/.vim_runtime/plugged_forked"
	mkdir ~/.vim_runtime/plugged_forked
fi

if [  ! -d ~/.vim_runtime/temp_dirs ]; then
	echo "mkdir ~/.vim_runtime/temp_dirs"
	mkdir ~/.vim_runtime/temp_dirs
fi




echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

vim +PlugInstall
