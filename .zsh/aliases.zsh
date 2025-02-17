# Git

alias gcm="git checkout main && git pull"
alias cmt="git commit -v -S -m"
alias cmte="git commit -v -S"
alias pl="git pull"
alias ps="git push"
alias psu="git push --set-upstream origin" # branch
alias sth="git stash"
alias al="git add -all"
alias au="git add -u"
alias gl="git log --graph --abbrev-commit --date=relative --decorate=no"
alias gla="git log --graph --abbrev-commit -all"
alias cl="git clone"
alias chp="git cherry-pick"
alias subi="git submodule init"
alias subu="git submodule update --remote --recursive"
alias newb="git checkout -B"
alias delb="git branch -D"
alias stat="git status"
alias unstage="git reset HEAD"
alias uncommit="git reset --soft HEAD^"
alias gviz="!f() { echo 'digraph git {' ; git log --pretty='format:  %h -> { %p }' \"$@\" | sed 's/[0-9a-f][0-9a-f]*/\"&\"/g' ; echo '}'; }; f"
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'


# Docker

alias dcu="docker compose up -d"
alias dcub="docker compose up --build -d"
alias dcd="docker compose down"
alias dps="docker compose ps"


# Venv

alias vact="source .venv/bin/activate"


# Misc

alias cls="clear"

alias lsf="sudo lsof -i"
alias k="sudo kill"

alias ls='ls --color=auto'
alias lla='ls -alF'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
