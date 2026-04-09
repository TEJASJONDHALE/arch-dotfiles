# # Source Modules
# source "$ZDOTDIR/config.zsh"
# source "$ZDOTDIR/aliases.zsh"
# source "$ZDOTDIR/binds.zsh"
# source "$ZDOTDIR/plugins.zsh"
# source "$ZDOTDIR/prompt.zsh"
# source "$ZDOTDIR/functions.zsh"

# # Completions
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# source "$ZDOTDIR/autocomplete.zsh"
# -----------------------------
# Environment (user-level)
# -----------------------------

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# Paths
typeset -U PATH path
export PATH="$HOME/.npm-global/bin:$HOME/.spicetify:$HOME/apps/android-studio/bin:$HOME/.bun/bin:$HOME/.scripts:$HOME/.local/bin:$HOME/.local/bin/fzf:$HOME/.cargo/bin:$PATH"

# Default apps
export TERMINAL="foot"
export BROWSER="zen-browser"
export EDITOR="hx"
export VISUAL="hx"

# Misc
export RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
export LESSCHARSET="utf-8"
export SUDO_PROMPT="pwd: "

# -----------------------------
# Source your modular config
# -----------------------------
source "$ZDOTDIR/config.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/binds.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/prompt.zsh"
source "$ZDOTDIR/functions.zsh"

# -----------------------------
# Completions
# -----------------------------
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
source "$ZDOTDIR/autocomplete.zsh"

# # Source Modules
# source "$ZDOTDIR/config.zsh"
# source "$ZDOTDIR/aliases.zsh"
# source "$ZDOTDIR/binds.zsh"
# source "$ZDOTDIR/plugins.zsh"
# source "$ZDOTDIR/prompt.zsh"
# source "$ZDOTDIR/functions.zsh"

# # Completions
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# source "$ZDOTDIR/autocomplete.zsh"
# -----------------------------
# Environment (user-level)
# -----------------------------

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# Paths
typeset -U PATH path
export PATH="$HOME/.npm-global/bin:$HOME/.spicetify:$HOME/apps/android-studio/bin:$HOME/.bun/bin:$HOME/.scripts:$HOME/.local/bin:$HOME/.local/bin/fzf:$HOME/.cargo/bin:$PATH"

# Default apps
export TERMINAL="foot"
export BROWSER="zen-browser"
export EDITOR="hx"
export VISUAL="hx"

# Misc
export RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
export LESSCHARSET="utf-8"
export SUDO_PROMPT="pwd: "

# -----------------------------
# Source your modular config
# -----------------------------
source "$ZDOTDIR/config.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/binds.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/prompt.zsh"
source "$ZDOTDIR/functions.zsh"

# -----------------------------
# Completions
# -----------------------------
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
source "$ZDOTDIR/autocomplete.zsh"

