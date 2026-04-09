# --- 1. Auto-Suggestions ---
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# --- 2. FZF Integration ---
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
fi

# --- 3. Zoxide ---
if command -v zoxide > /dev/null; then
    eval "$(zoxide init zsh)"
fi

# --- 4. Syntax Highlighting (MUST BE LAST) ---
if [ -f /usr/share/zsh/plugins/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]; then
    source /usr/share/zsh/plugins/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
elif [ -f /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]; then
    source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fi
