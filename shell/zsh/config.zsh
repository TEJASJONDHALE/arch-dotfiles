# --- Options ---
KEYTIMEOUT=1
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt autocd
setopt INTERACTIVE_COMMENTS

# --- History ---
mkdir -p "$XDG_CACHE_HOME/zsh"
export HISTFILE="$XDG_CACHE_HOME/zsh/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# --- FZF Configuration ---
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d .'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"
