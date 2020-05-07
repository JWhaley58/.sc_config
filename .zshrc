echo "Pulling most recent sc_config"
cd ~/.config
git pull
cd ~
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export ZSHRC_PYTHON_PATH=$(which python3)

# Auto update zsh
DISABLE_UPDATE_PROMPT=true

ZSH_THEME="dstcustom"

plugins=(
  git 
	last-working-dir 
	colored-man-pages 
	zsh-autosuggestions
	autojump
	zsh-256color
	alias-tips
)

source $ZSH/oh-my-zsh.sh

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

function lazypull() {
	cd ~/notes
	git reset --hard HEAD
	git clean -xffd
	git pull	
}

if [ -f ~/.fzf/bin/fzf ]; then # Add programs to path if needed
	path+=~/.fzf/bin/
fi

if [ -f ~/.fzfrc ]; then # Import my fzf cmds if present
	source ~/.fzfrc
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # fzf zsh autocompletion

export PATH=~/Library/Python/3.7/bin:$PATH

# Custom Aliases
alias lo='locate'
alias hg="history | grep "
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias n="cd ~/notes; ll"
alias ncmd="grep \\\\$ "
alias ndir="grep /  "
alias npeek="grep '##' "
alias x="exit"
alias sz="source ~/.zshrc"
alias grep='grep -i --color'
alias al="cat ~/.zshrc | grep -v '#' | grep alias"
alias alg="cat ~/.zshrc | grep -v '#' | grep alias | grep "
alias tree='tree -C'
alias ss="./box_jumper.sh"
alias gah="sudo !!"
alias sudo='sudo env PATH=$PATH'
alias hg='history | grep'
alias svim='sudo vim -u ~/.vimrc'
alias sc='systemctl'
alias ssc='sudo systemctl'
alias rhelpy='scl enable rh-python36 $(which zsh)'
alias rhyme="python3 ~/scripts/rhyme.py"
alias vg="vim -c 'Goyo' "
