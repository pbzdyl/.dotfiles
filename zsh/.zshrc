source $HOME/.antigen.zsh

COMPLETION_WAITING_DOTS="true"

antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle gradle
antigen bundle jump
antigen bundle history-substring-search
antigen bundle fasd
antigen theme pbzdyl/dotfiles zsh/themes/badyl

antigen apply

alias j='fasd_cd -d'
alias v='f -e vim'
alias o='a -e open'

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

