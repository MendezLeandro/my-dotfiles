fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit && compinit
zmodload -i zsh/complist

zstyle ':completion::complete:*' use-cache on

zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

zstyle ':completion:*' menu select=1 _complete _ignored _approximate

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

if command -v dircolors > /dev/null 2>&1; then
  eval "$(dircolors -b)"

  zstyle ':completion:*' list-colors $LS_COLORS
else
  echo "Warning: missing dircolors"
fi