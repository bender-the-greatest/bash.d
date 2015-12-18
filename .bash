#!/bin/bash

# Bash settings

# Enable 256 colors in the terminal (comment out the next line if the term does not support this)
#export TERM=screen-256color-bce
export TERM=screen-256color

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Add Homebrew bash completion (OSX)
if [ "$(uname)" == "Darwin" ]; then
    if [ brew --version 2>&1 /dev/null ]; then
	if [ -f `brew --prefix`/etc/bash-completion ]; then
	    source `brew --prefix`/etc/bash_completion
	else
	    echo Could not find `brew --prefix`/etc/bash_completion. Make sure the bash-completion package is installed.
	fi
    else
	echo Homebrew is not installed. Please install homebrew and the bash-completion package to enable bash completion for Homebrew.
    fi
fi
