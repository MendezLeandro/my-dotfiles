if command -v dircolors > /dev/null 2>&1; then
  eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
else
  echo "Warning: missing dircolors"
fi