f=$(pwd)
git submodule init
git submodule update
cd $HOME/.dotfiles/vim
sh bootstrap.sh
cd $HOME/.dotfiles/oh-my-zsh/
sh bootstrap.sh
cd $HOME/.dotfiles/
sudo gem install teamocil
rake install
#ln -Fs ~/.dotfiles/vim/vimrc ~/.vimrc
mkdir -p $HOME/.ipython
ln -Fs $f"/ipython/ipy_user_conf.py" $HOME/.ipython/ipy_user_conf.py
