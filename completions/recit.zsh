if [[ ! -o interactive ]]; then
    return
fi

compctl -K _recit recit

_recit() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(recit commands)"
  else
    completions="$(recit completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
