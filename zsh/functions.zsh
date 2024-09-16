# GIT

function ya() {
    tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

function gi() {
 curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;  # GET gitignore
}

function gacp() {
    if [ $# -ne 2 ]; then
        echo "Usage: gacp <commit_message> <remote_branch>"
        return 1
    fi

    commit_message="$1"
    remote_branch="${2:-master}"

    git add .
    git commit -m "$commit_message"
    git push origin "$remote_branch"
}



# FZF SCRIPTS


# fcd() {
#     local directory=$(
#       fd --type d | \
#         fzf --query="$1" --no-multi --select-1 --exit-0 \
#             --preview 'tree -C {} | head -100'
#     )
#     if [[ -n $directory ]]; then
#         cd "$directory"
#     fi
# }

fedit() {
    local file=$(
      fzf --query="$1" --no-multi --select-1 --exit-0 \
          --preview 'bat --color=always --line-range :500 {}'
    )
    if [[ -n "$file" ]]; then
        $EDITOR "$file"
    fi
}

# fkill() {
#     if [[ $(uname) == Linux ]]; then
#         local pids=$(ps -f -u $USER | sed 1d | fzf | awk '{print $2}')
#     elif [[ $(uname) == Darwin ]]; then
#         local pids=$(ps -f -u $USER | sed 1d | fzf | awk '{print $3}')
#     else
#         echo 'Error: unknown platform'
#         return
#     fi
#     if [[ -n "$pids" ]]; then
#         echo "$pids" | xargs kill -9 "$@"
#     fi
# }

gitlog() {
    local selection=$(
      git ll --color=always "$@" | \
        fzf --no-multi --ansi --no-sort --no-height \
            --preview "echo {} | grep -o '[a-f0-9]\{7\}' | head -1 |
                       xargs -I@ sh -c 'git show --color=always @'"
    )
    if [[ -n $selection ]]; then
        local commit=$(echo "$selection" | sed 's/^[* |]*//' | awk '{print $1}' | tr -d '\n')
        git show $commit
    fi
}
