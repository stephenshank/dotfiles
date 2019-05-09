echo $PWD
git clean -xdf
git submodule update --init
# TMUX
rm -f ~/.tmux.conf; ln -s $PWD/.tmux.conf ~/.tmux.conf

## Neovim
rm -rf ~/.config/nvim; ln -s $PWD/nvim ~/.config/nvim
cd neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/Software"
make install
cd ..
## Vundle
nvim +PluginInstall +qall
