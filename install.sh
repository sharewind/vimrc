#wget --no-check-certificate https://raw.githubusercontent.com/sharewind/vimrc/full/install.sh -O - |sh

cd ~
git clone git@github.com:sharewind/vimrc.git
mv vimrc .vim_runtime
ln -sf ~/.vim_runtime/vimrcs/vimrc ~/.vimrc

vim +PluginInstall +qall


