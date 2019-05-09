echo $PWD
# TMUX
rm -f ~/.tmux.conf; ln -s $PWD/.tmux.conf ~/.tmux.conf

# VIM
rm -rf ~/.vim; ln -s $PWD/.vim ~/.vim

## Neovim
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
cd neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/Software"
make install
cd ..
## Vundle
rm -f ~/.config/nvim/init.vim; ln -s $PWD/.vimrc ~/.config/nvim/init.vim
nvim +PluginInstall +qall
