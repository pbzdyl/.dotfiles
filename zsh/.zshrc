export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export EDITOR=vim
source $HOME/.antigen.zsh

COMPLETION_WAITING_DOTS="true"

antigen use oh-my-zsh
#antigen bundle terminalapp
antigen bundle git
antigen bundle git-extras
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle gradle
antigen bundle jump
antigen bundle history-substring-search
antigen bundle fasd
antigen bundle osx
antigen bundle common-aliases
antigen theme pbzdyl/dotfiles zsh/themes/badyl

antigen apply

alias j='fasd_cd -d'
alias v='f -e vim'
alias o='a -e open'
alias gs='git status'
alias gcb='gradle clean build'
alias gfnp='gradle -Drun_rest_tests="true" -Dfunctest.env=NPTEST -Dmongo.url="mongodb1-nptest:27017" -Dmongo.dbname="backend" clean build'

ssh-add 1>/dev/null 2>&1

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export BOOT_JVM_OPTIONS='-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xmx2g -XX:MaxPermSize=128m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xverify:none'

#source ~/.prompt.sh

export KEYTIMEOUT=1
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word

source $HOME/.prompt.sh

