# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## Installing
This is currently only supported in Linux and uses a Makefile.
To install the custom .vimrc and .bashrc configs, simply run `make linux`. Additionally, this will add a .TRASH directory to your home directory, and create a backup of your current .vimrc file.
## Cleanup
To run the cleanup process run `make clean` and all .vimrc and .bashrc changes will be reverted
## vimrc
This is my custom .vimrc configuration for Vim.
It includes setting number, autoindent and ruler in all files, as well as setting noexpandtab, shifwidth=8, and softtabstop=0 in Makefiles.
It also turns sytax on and sets the color to elflord.
These .vimrc settings will replace all existing vimrc settings until cleanup is run.
## bashrc
This is my custom .bashrc configuration for Bash.
It includes aliases such as `cdd` for "cd ..", `lsa` for "ls -A", `lsl` for "ls -l", `lsal` for "ls -Al", `targz <file>` to tar -zcvf a file, `untar <file>` to untar a file, `cselab` to auto connect to a linux lab computer, `trash <file>` to move a file to .TRASH, and `rmtrash` to empty the .TRASH directory. This file also includes the functions that `targz` and `untar` use to tar and untar respectively.
