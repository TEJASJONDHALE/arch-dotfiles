setopt automenu
setopt extended_history

zstyle ':completion:*' menu yes select
zstyle ':completion:*' list-prompt %S%M matches%u%s
zstyle ':completion:*' select-prompt %S%U%s
zstyle ':completion:*' verbose yes
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order 
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit -C -d $XDG_CACHE_HOME/.zsh_cache

[ -s "/home/tejas/.bun/_bun" ] && source "/home/tejas/.bun/_bun"

