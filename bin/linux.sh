#!/bin/bash

#Check if the OS is Linux and exits otherwise
if [ $(uname) != "Linux" ]
then
	echo "Error: Operating system is not Linux" >> linuxsetup.log
	exit
fi

# Creates the .TRASH file if it doesn't already exist
mkdir -p ~/.TRASH

# Renames .vimrc to .bup_vimrc if .vimrc exists
if [ -e ~/.vimrc ]
then
	mv ~/.vimrc ~/.bup_vimrc
	echo "~/.vimrc remamed to ~/.bup_vimrc" >> linuxsetup.log
else
	touch ~/.bup_vimrc
fi

# Redirects ./etc/vimrc to ~/.vimrc (overwrites)
cat ./etc/vimrc > ~/.vimrc

# Adds source ~/.dotfiles/etc/bashrc_custom to the end of ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
