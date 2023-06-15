# Neovim file configurations

NEOVIM_CONFIG_DIRECTORY = ${HOME}/.config/nvim

$(NEOVIM_CONFIG_DIRECTORY):
	mkdir -p ${HOME}/.config
	ln -s $(PWD)/nvim $(NEOVIM_CONFIG_DIRECTORY)

neovim: $(NEOVIM_CONFIG_DIRECTORY)

all: neovim
