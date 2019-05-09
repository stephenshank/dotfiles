# TMUX
rm -f ~/.tmux.conf; ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# VIM
## Vundle
rm -rf ~/.vim; ln -s ~/dotfiles/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
rm -f ~/.vimrc ; ln -s ~/dotfiles/.vimrc ~/.config/nvim/init.vim
nvim +PluginInstall +qall
