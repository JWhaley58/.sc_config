# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
zsh
exit

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
