sudo apt-get -y remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common

sudo apt-get -y install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev python3-dev ruby-full git clang cmake xclip gdb curl powerline

git clone https://github.com/vim/vim $HOME/Downloads/vim

pushd $HOME/Downloads/vim
./configure \
--enable-multibyte \
--enable-perlinterp=dynamic \
--enable-rubyinterp=dynamic \
--with-ruby-command=/usr/bin/ruby \
--enable-pythoninterp=dynamic \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
--enable-python3interp \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
--enable-luainterp \
--with-luajit \
--enable-cscope \
--enable-gui=auto \
--with-features=huge \
--with-x \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--enable-fail-if-missing
make
sudo make install

# install vundle-------------------------
pushd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# install youcompleteme-----------------
sudo apt-get -y install clang
git clone https://github.com/Valloric/YouCompleteMe $HOME/.vim/bundle/YouCompleteMe/
pushd $HOME/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
python3 install.py --all --system-libclang

#copy confg
cp .vimrc $HOME
cp nvim/UltiSnips $HOME/.vim


#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
