setopt noautomenu
setopt nomenucomplete
setopt no_always_last_prompt

bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey \^U backward-kill-line

export PROMPT="%B%F{green}%n@%m %(!.%F{red}.%F{blue})%1d %(!.#.$) %f%b"

export CLICOLOR=1
export PATH=$PATH:$HOME/.git-helpers

if [ -e ".profile.local" ]; then
  . .profile.local
fi

alias vim=nvim
