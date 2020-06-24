# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH=~/.npm-global/bin:$PATH

export PATH="$HOME/.poetry/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export PATH="$HOME/julia-1.3.1/bin:$PATH"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Created by `userpath` on 2020-02-08 12:19:57
export PATH="$PATH:/home/iyed/.local/bin"

# Created by `userpath` on 2020-02-08 13:07:01
export PATH="$PATH:/home/iyed/.local/bin"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Created by `userpath` on 2020-02-12 07:13:41
export PATH="$PATH:/home/iyed/.local/bin"
