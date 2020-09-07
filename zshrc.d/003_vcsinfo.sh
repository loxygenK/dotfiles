local SEPARATOR="%F{229}†%f"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr " %F{154}✓%f"
zstyle ':vcs_info:git:*' unstagedstr " %F{217}!%f"
zstyle ':vcs_info:*' formats " $SEPARATOR %F{069}%b%f%c%u"
zstyle ':vcs_info:*' actionformats " $SEPARATOR %F{069}%b%f%u %F{245}(now %F{148}%a%F{245})%f"
