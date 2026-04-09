# # --- XDG Base Directories ---
# export ZDOTDIR="$HOME/.config/zsh"
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_STATE_HOME="$HOME/.local/state"
# export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# # --- Sub-directories ---
# export ANDROID_HOME="$XDG_DATA_HOME"/android
# export CARGO_HOME="$XDG_DATA_HOME"/cargo
# export BUN_INSTALL="$HOME/.bun"
# export GOPATH="$XDG_DATA_HOME"/go

# # --- Path Configuration ---
# # Combined paths: Local bins, FZF, Cargo, Android, NPM
# typeset -U PATH path
# export PATH="$HOME/.npm-global/bin:$HOME/.spicetify:$HOME/apps/android-studio/bin:$BUN_INSTALL/bin:$HOME/.scripts:$HOME/.local/bin:$HOME/.local/bin/fuzzel:$HOME/.local/bin/fzf:$HOME/.cargo/bin:$PATH"

# # --- Session & Niri Settings ---
# export XDG_SESSION_TYPE=wayland
# export XDG_CURRENT_DESKTOP=niri
# export MOZ_ENABLE_WAYLAND=1

# # --- Nvidia/GPU Optimizations (RTX 2050) ---
# # Niri/Smithay needs these for correct GPU usage
# export LIBVA_DRIVER_NAME=nvidia
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
# export NVD_BACKEND=direct

# # --- QT & Tooling ---
# export QT_QPA_PLATFORM=wayland
# export QT_QPA_PLATFORMTHEME="qt6ct"
# export QT_AUTO_SCREEN_SCALE_FACTOR=1

# # --- Default Apps ---
# export TERMINAL="foot"
# export BROWSER="zen-browser"
# export EDITOR='hx'
# export VISUAL='hx'

# # --- Extra Configs ---
# export RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
# export LESSCHARSET="utf-8"
# export SUDO_PROMPT="pwd: "


# Set ZDOTDIR so zsh uses ~/.config/zsh
export ZDOTDIR="$HOME/.config/zsh"
