#wget --no-check-certificate https://raw.githubusercontent.com/sharewind/vimrc/full/install.sh -O - |sh

git clone -b full git@github.com:sharewind/vimrc.git ~/.vim_runtime
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim_runtime/bundle/vundle

ln -sf ~/.vim_runtime/vimrcs/.vimrc ~/.vimrc
vim +PluginInstall +qall


