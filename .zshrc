# General settings 

PROMPT='%F{cyan}%M%f %F{red}%n%f%F{blue}%B %~ > %b%f'

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

setopt appendhistory
setopt incappendhistory
setopt sharehistory

# Aliases

alias ll='ls -lrth --color'
alias rm='rm -I'
alias fuck='sudo $(fc -ln -1)'

alias v='vim'
alias vu='vim'
alias vo='vim'
alias vom='vim'
alias vum='vim'

alias glol='git log --oneline --graph --decorate'
alias gblc='git commit -a --amend'

# Vi mode

export KEYTIMEOUT=1
bindkey -v

function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}

zle -N zle-keymap-select

zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}

zle -N zle-line-init
