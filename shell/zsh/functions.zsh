function gi() {
 curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;
}

function gacp() {
    if [ $# -ne 2 ]; then
        echo "Usage: gacp <commit_message> <remote_branch>"
        return 1
    fi
    git add .
    git commit -m "$1"
    git push origin "${2:-master}"
}

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
