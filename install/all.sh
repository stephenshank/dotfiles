echo $PWD
git clean -xdf
git submodule update --init
# TMUX
sh install/tmux.sh

## Neovim
npm install -g tern neovim
rm ~/.tern-config; ln -s $PWD/.tern-config ~/.tern-config
cd neovim
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/Software"
make install
cd ..
sh install/neovim-plugins-and-init.sh
