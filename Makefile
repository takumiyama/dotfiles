CURRENT_DIR=$(shell pwd)

all: clean submodules install_zsh

bash: clean submodules install_bash

clean:
	@rm -rf ~/.zlogin ~/.zlogout ~/.zprezto ~/.zpreztorc ~/.zprofile ~/.zshenv ~/.zshrc ~/.vimrc ~/.vim ~/.gitconfig ~/.zshrc ~/.bash_profile ~/.bashrc

submodules:
	git submodule update --init

install_zsh:
	$(CURRENT_DIR)/dotfilesLink_zsh.sh

install_bash:
	~/dotfiles/dotfilesLink_bash.sh
