autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%20<..<%b)'

setopt PROMPT_SUBST
export PROMPT='%F{#0087ff}%2~%f%F{#00afaf}${vcs_info_msg_0_}%f %F{#5f8700}%#%f '

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export CLICOLOR=1
