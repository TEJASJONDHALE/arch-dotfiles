export PATH="$BUN_INSTALL/bin:$HOME/.scripts:$HOME/.local/bin:$HOME/.local/bin/rofi:$HOME/.local/bin/fzf:$HOME/.cargo/bin:$PATH"

KEYTIMEOUT=1
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

ZSH_CUSTOM=$HOME/.config/zsh
ZSH_AUTOSUGGEST_USE_ASYNC="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor regexp root line)
ZSH_HIGHLIGHT_MAXLENGTH=512
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5c5c5c,bold"

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt autocd
setopt INTERACTIVE_COMMENTS
