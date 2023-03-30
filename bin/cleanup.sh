#!/bin/bash

rm ~/.vimrc
#Deletes the .vimrc directory from the home directory
sed -i 's/[source]+/ /g' ~/.bashrc
#Replaces the text found with nothing in the given file

rm -rf ~/.TRASH/*
#Deletes the .TRASH directory
