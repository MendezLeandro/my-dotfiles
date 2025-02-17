if command -v starship > /dev/null; then
  eval "$(starship init zsh)"
fi


# Git

gc() {
	git checkout $1
	git pull
}

revert() {
	git revert $1
	git push
}


# Uvicorn

uvi() {
	uvicorn $1:app --reload
}


# Misc

# b -> Goes back 1 directory | alias of cd ..
# b 2 -> Goes back 2 directories | alias of cd ../..
b() {
  local levels=${1:-1}

  for ((i=0; i<$levels; i++)); do
    cd ..
  done
}

add-alias () {
  local name=$1 value="$2"
  echo "alias $name='$value'" >>~/.zsh_aliases
  eval "alias $name='$value'"
  alias $name
}

# Notifies after long running commands
if command -v notify-send > /dev/null 2>&1; then
 alias alert='notify-send --urgency=normal -i "$([ $? = 0 ] && echo terminal || echo error)" "$(fc -ln -1)"'
else
 echo "Warning: libnotify-bin is not installed. Alert alias disabled."
fi
