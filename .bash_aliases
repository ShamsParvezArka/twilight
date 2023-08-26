alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias icat="kitty +kitten icat"
alias copy="xclip -sel clip"

# search -> sort -> cut -> fzf -> install(xargs)
alias pkg="apt-cache search '' | sort | cut -d ' ' -f 1 | fzf --reverse --multi --cycle --preview 'apt-cache show {1}' | xargs -r sudo apt install -y"
