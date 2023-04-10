#!/bin/bash

# Replaces .vimrc with the origianl .vimrc (.bup_vimrc)
if [ -e ~/.bup_vimrc ]
then
	rm ~/.vimrc
	mv ~/.bup_vimrc ~/.vimrc
fi


# Removes the 'source ~/.dotfiles/etc/bashrc_custom/d" line from ~/.bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Removes .TRASH dir
rm -rf ~/.TRASH

