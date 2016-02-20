# BASH.D
This is a project containing my customizations for the Bourne-again (bash) shell. I have created this for my own personal use, but if you want to use it feel free.

## Installation
Run these commands to install bash.d:

1. `git clone git@github.com:metalseargolid/bash.d.git ~/.bash.d` or `git clone https://github.com/metalseargolid/bash.d.git`
2. `echo "source ~/.bash.d/bashcustom" >> ~/.bashrc`
2a. If you use zsh you can source zshcustom instead, which just basically takes out the bash specific stuff.
3. `source ~/.bashrc`
4. (Optional) `touch ~/.bash.d/ssh_aliases`
   * This file is similar to aliases, but I needed a way to separate my command aliases and ssh aliases so I could throw this on Github.

That's it!

## Features

This list of features may not be complete, but my bash.d does the following:
* Customized shell prompt, complete with showing you the git branch of your current directory (if you are in a git repo)
* `load-keys` function which will load all ssh keys present in ~/.ssh into ssh-agent.
  * Ignores *config*, *known_hosts*, *authorized_keys*, and any file which is prepended with *noload_*
  * *Added bonus*: ssh-agent is recycled across terminal sessions
* Docker shortcut functions
* A countdown timer
* Several aliases for long-winded commands
* `grepps name` - will return running processes that match a string

## Supported systems

This has been tested on Debian, Ubuntu, and LinuxMint. Some of customizations in .bash may not work on other distros.

If you want to try this on OSX, most of it should work but again, you may need to disable some things in .bash.
