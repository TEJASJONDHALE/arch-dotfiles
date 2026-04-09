setopt automenu
setopt extended_history
setopt always_to_end
setopt complete_in_word

zstyle ':completion:*' menu yes select
zstyle ':completion:*' list-prompt %S%M matches%u%s
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Add Arch standard completions
fpath+=(/usr/share/zsh/site-functions)

autoload -Uz compinit
_comp_path="$XDG_CACHE_HOME/zsh/.zcompdump"
mkdir -p "$XDG_CACHE_HOME/zsh"

# Regenerate cache only once every 24 hours
if [[ -n "$_comp_path"(#qN.mh+24) ]]; then
    compinit -d "$_comp_path"
else
    compinit -C -d "$_comp_path"
fi
