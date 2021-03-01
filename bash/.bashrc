# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# rest of the dotfiles
if [ -f ~/.alias ]; then
        source ~/.alias
fi

if [ -f ~/.env ]; then
        source ~/.env
fi

if [ -f ~/.functions ]; then
        source ~/.functions
fi

# allow for local/private content
if [ -f ~/.alias.local ]; then
        source ~/.alias.local
fi

if [ -f ~/.env.local ]; then
        source ~/.env.local
fi

if [ -f ~/.functions.local ]; then
        source ~/.functions.local
fi


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# unlimited history
HISTSIZE=
HISTFILESIZE=

# powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi
