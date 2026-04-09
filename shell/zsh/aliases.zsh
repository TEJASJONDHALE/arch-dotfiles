# --- System & File Management ---
alias ...='cd ../..'
alias mkdir='mkdir -pv'
alias mount='mount | column -t'
alias count='ls -1A | wc -l'

# --- Modern Replacements ---
alias cat='bat'
alias ls='eza -xF --icons'
alias l='eza -aF --icons --group-directories-first'
alias la='eza --icons -1 -lFh --group-directories-first --git --time-style=relative'
alias tree='eza -T --level=2 --icons'

# --- Editors & Viewers ---
alias te='helix'
alias pdf='zathura'
alias img='swayimg'
# --- Media & Fun ---
alias anime='ani-cli'
alias shuffle='mpv --shuffle'

# --- Niri (Wayland) Tools ---
alias niri-config='$EDITOR ~/.config/niri/config.kdl'
alias nmsg='niri msg'
alias fix-monitor='niri msg output eDP-1 mode 1920x1200' 

# --- Hardware & Network ---
alias wifil='nmcli device wifi list'
alias wific='nmcli device wifi connect'
alias gpu-watch='watch -n 1 nvidia-smi' 

# --- Development & Git ---
alias ga='git add .'
alias gcm='git commit -m'
alias push='git push'
alias gcl='git clone'
alias gs='git status'
alias adb='HOME="$XDG_DATA_HOME"/android adb'
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

alias foot-light="foot --config ~/.config/foot/foot-light.ini"
alias foot-dark="foot --config ~/.config/foot/foot.ini"
