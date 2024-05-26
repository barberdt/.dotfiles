# Git information
autoload -Uz vcs_info
precmd() { vcs_info }

# Prompt customization
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats ' (%20<..<%b)'
export PROMPT='%F{#268bd2}%2~%f%F{#2aa198}${vcs_info_msg_0_}%f %F{#859900}%#%f '

# Colorize LS output
export CLICOLOR=1

# Aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# asdf
. "$HOME/.asdf/asdf.sh"

# Tab completion
autoload -Uz compinit
compinit
