# -----------------------------
# Alias
# -----------------------------
# グローバルエイリアス
alias -g ":l"='| less'
alias -g ":h"='| head'
alias -g ":g"='| grep'
alias -g ":gi"='| grep -ri'

alias -g "w/osu"="WINEPREFIX=$HOME/.wpfx_osu"
alias -g "w/tetris"="WINEPREFIX=$HOME/.tetris"
alias -g "w/gen"="WINEPREFIX=$HOME/.wine"

# Make it more sexy(文字通り)
alias yarn='hentai_yarn && yarn'
alias -g "yarn aegu"="hentai_yarn"

# Unsexialize
alias nyarn='"yarn"'

alias vim="nvim"
alias nv="nvim"

alias lst='ls -ltr --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'

alias al "sl -a"

alias du="du -h"
alias df="df -Th"
alias su="su -l"

alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias diff='diff -U1'

alias tma='tmux attach'
alias tml='tmux list-window'

alias dki="docker run -i -t -P"
alias dex="docker exec -i -t"
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git checkout"
alias gp="git push origin "
alias gg="git log --oneline --graph"

alias python="python3"
alias pip="pip3"

alias pvr="pipenv run"

alias bt="blin-tool"

alias export-pdf="wkhtmltopdf --print-media-type --header-right '[date]' --header-spacing 2 --footer-center '[page]/[topage]' --footer-spacing 2 --margin-top 20 --margin-right 20 --margin-left 20 --margin-bottom 20"
