# -----------------------------
# Alias
# -----------------------------

#abbrを一旦初期化する
for abbr_name in (abbr --list)
	abbr --erase $abbr_name
end

# --- ABBR ---
abbr --add vi 'vim'

abbr --add so 'source'
abbr --add .. 'c ../'
abbr --add back 'pushd'

abbr --add tma 'tmux attach'
abbr --add tml 'tmux list-window'

abbr --add dki "docker run -i -t -P"
abbr --add dex "docker exec -i -t"
abbr --add drmf 'docker stop (docker ps -a -q) && docker rm (docker ps -a -q)'

abbr --add gs "git status"
abbr --add gb "git branch"
abbr --add gp "git push origin "
abbr --add gg "git log --oneline --graph"

abbr --add python "python3"
abbr --add pip "pip3"

abbr --add enc "encrypt"
abbr --add dec "decrypt"

abbr --add conup "sudo nmcli con up yeah --ask && sudo dhcpcd"

abbr --add lcom latest_commit

abbr --add fc flutter_check

abbr --add お気持ち表明 "fortune -a | cowsay"

# --- ALIAS ---

alias yarn='hentai_yarn && '(which yarn)
alias iyarn="hentai_yarn"

alias nyarn=(which yarn)

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

alias export-pdf="wkhtmltopdf --print-media-type --header-right '[date]' --header-spacing 2 --footer-center '[page]/[topage]' --footer-spacing 2 --margin-top 20 --margin-right 20 --margin-left 20 --margin-bottom 20"
