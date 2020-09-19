# -----------------------------
# Alias
# -----------------------------

# Make it more sexy(文字通り)
alias yarn='hentai_yarn && '(which yarn)
alias iyarn="hentai_yarn"

# Unsexialize
alias nyarn='"yarn"'

# vimをnvimに、nvをnvimに
alias vim="nvim"
alias nv="nvim"

# エイリアス
alias lst='ls -ltr --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'

alias al="sl -a"

alias du="du -h"
alias df="df -Th"
alias su="su -l"
alias so='source'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'

alias tma='tmux attach'
alias tml='tmux list-window'

alias dki="docker run -i -t -P"
alias dex="docker exec -i -t"
alias drmf='docker stop (docker ps -a -q) && docker rm (docker ps -a -q)'

alias gs="git status"
alias gb="git branch"
alias gp="git push origin "
alias gg="git log --oneline --graph"

alias python="python3"
alias pip="pip3"

alias bt="blin-tool"

alias export-pdf="wkhtmltopdf --print-media-type --header-right '[date]' --header-spacing 2 --footer-center '[page]/[topage]' --footer-spacing 2 --margin-top 20 --margin-right 20 --margin-left 20 --margin-bottom 20"

alias enc="encrypt"
alias dec="decrypt"

alias reopen="exo-open --launch TerminalEmulator && exit"

alias conup="sudo nmcli con up yeah --ask && sudo dhcpcd"

alias お気持ち表明="fortune -a | cowsay"
