source $ZSHRCD_LOCATION/variables/prompt_color.sh

local MAJOR_SEPARATOR="%F{$SEPARATOR_COLOR}†%f"
local SEPARATOR="%F{$SEPARATOR_COLOR}･%f"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr " $SEPARATOR %F{$GIT_STAGED}✓ READY%f"
zstyle ':vcs_info:git:*' unstagedstr " $SEPARATOR %F{$GIT_UNSTAGED}- OUT%f"
zstyle ':vcs_info:*' formats " $MAJOR_SEPARATOR %F{$GIT_BRANCH}%b%f%c%u"
zstyle ':vcs_info:*' actionformats " $MAJOR_SEPARATOR %F{$GIT_BRANCH}%b%f%u %F{$SUBTEXT_COLOR}(now %F{$GIT_ACTION}%a%F{$SUBTEXT_COLOR})%f"
