#!/bin/bash
#Checks for the right uname
if (( uname != "Linux" ));then
	echo "Error: uname is not Linux" >> linuxsetup.log
	exit
fi
#Makes .TRASH directory in the home directory
mkdir -p ~/.TRASH
#If .vimrc exists in the home directory, changes .vimrc name in this directory
if [ -f "~/.vimrc" ];then
	echo ".vimrc changed to bup_vimrc" >> linuxsetup.log
	mv .vimrc .bup_vimrc
fi

./etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
