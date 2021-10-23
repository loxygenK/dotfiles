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

alias cat="bat --theme='Solarized (light)' --style='numbers,grid'"

alias vim="nvim"
alias nv="nvim"

alias al "sl -a"

alias exa="exa --icons"
alias ls="exa"
alias tree="exa --tree"
alias treel="exa --tree -l"

alias du="du -h"
alias df="df -Th"
alias su="su -l"

alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias diff='diff -U1'

alias python="python3"
alias pip="pip3"

alias pvr="pipenv run"

alias bt="blin-tool"

alias export-pdf="wkhtmltopdf --print-media-type --header-right '[date]' --header-spacing 2 --footer-center '[page]/[topage]' --footer-spacing 2 --margin-top 20 --margin-right 20 --margin-left 20 --margin-bottom 20"

alias gmc="gitmoji -c"

alias windows="startwinvm"
alias win=windows

# --- Abbr. ---
alias abbr="abbr --session --quiet --force"

abbr c='cd'

abbr lst='ls -ltr'
abbr la='ls -la'
abbr ll='ls -l'

# abbr flutter='fvm flutter'

abbr tma='tmux attach'
abbr tml='tmux list-window'

abbr dki="docker run -i -t -P"
abbr dex="docker exec -i -t"
abbr drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

abbr gs="git status -bs"
abbr gsb="git status"
abbr gb="git branch"
abbr gd="git diff"
abbr gds="git diff --staged"
abbr ga="git add"
abbr gc="git commit"
abbr gps="git push origin"
abbr gpl="git pull origin"
abbr gg="git log --oneline --graph"

unalias abbr
