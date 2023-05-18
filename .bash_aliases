alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pkg="apt-cache search '' | sort | cut -d ' ' -f 1 | fzf --reverse --multi --cycle --preview 'apt-cache show {1}' | xargs -r sudo apt install -y"
alias man="man -k . | sort | cut -d ' ' -f1 | fzf --reverse --multi --cycle --preview 'man {1} ' | xargs -r man "

