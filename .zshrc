# Tab completion
autoload -Uz compinit
compinit

# Git information
autoload -Uz vcs_info
precmd() { vcs_info }

# Prompt customization
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats ' (%20<..<%b)'
export PROMPT='%F{#0087ff}%2~%f%F{#00afaf}${vcs_info_msg_0_}%f %F{#5f8700}%#%f '

# Colorize LS output
export CLICOLOR=1

# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
