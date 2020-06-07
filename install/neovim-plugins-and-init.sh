## Neovim
rm -rf ~/.config/nvim; ln -s $PWD/nvim ~/.config/nvim
# Vim-Plug plugin manager (https://github.com/junegunn/vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall
# Environment for neovim
python3 -m venv pythonenv
./pythonenv/bin/pip install cython
./pythonenv/bin/pip install pynvim snakemake biopython pysam numpy pandas scipy matplotlib seaborn pyvcf

# TernJS
rm -f ~/.tern-config; ln -s $PWD/.tern-config ~/.tern-config
