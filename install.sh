# TMUX
rm -f ~/.tmux.conf; ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# VIM
## Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf ~/.vim; ln -s ~/dotfiles/.vim ~/.vim
rm -f ~/.vimrc ; ln -s ~/dotfiles/.vimrc ~/.vimrc
vim +PluginInstall +qall

# TODO: clang-completer is not working on Ubuntu
## YouCompleteMe: https://valloric.github.io/YouCompleteMe/
python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
