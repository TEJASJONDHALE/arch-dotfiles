#source /home/tejas/.config/zsh/.zshenv.zsh
source /home/tejas/.config/zsh/config.zsh
source /home/tejas/.config/zsh/prompt.zsh
source /home/tejas/.config/zsh/binds.zsh
source /home/tejas/.config/zsh/autocomplete.zsh
source /home/tejas/.config/zsh/aliases.zsh
source /home/tejas/.config/zsh/plugins.zsh
source /home/tejas/.config/zsh/functions.zsh

# bun completions
[ -s "/home/tejas/.bun/_bun" ] && source "/home/tejas/.bun/_bun"
export WLR_NO_HARDWARE_CURSORS=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export QT_QPA_PLATFORM=wayland
