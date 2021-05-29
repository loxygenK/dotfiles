LIGHTTHEME=1

__light() {
  [[ $LIGHTTHEME -eq 1 ]]
}

# --- Prompt color setting ---
__light && SEPARATOR_COLOR=100 || SEPARATOR_COLOR=229
__light && PWD_COLOR=198       || PWD_COLOR=182
__light && FAILED_COLOR=160    || FAILED_COLOR=3
__light && SUBTEXT_COLOR=245   || SUBTEXT_COLOR=242
__light && SYMBOL_NORM=35      || SYMBOL_NORM=150
__light && SYMBOL_FAILED=160   || SYMBOL_FAILED=160

__light && VIM_NORMAL=57       || VIM_NORMAL=097
__light && VIM_INSERT=30       || VIM_INSERT=043
__light && VIM_VISUAL=203      || VIM_VISUAL=217
__light && VIM_VLINE=203       || VIM_VLINE=213

# --- VCS Prompt color setting ---
__light && GIT_STAGED=70       || GIT_STAGED=154
__light && GIT_UNSTAGED=166    || GIT_STAGED=217
__light && GIT_BRANCH=20       || GIT_BRANCH=69
__light && GIT_ACTION=70       || GIT_ACTION=148
