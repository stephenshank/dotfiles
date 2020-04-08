## Neovim
rm -rf ~/.config/nvim; ln -s $PWD/nvim ~/.config/nvim
nvim +PluginInstall +qall

# TernJS
rm -f ~/.tern-config; ln -s $PWD/.tern-config ~/.tern-config
