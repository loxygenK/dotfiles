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

# --- Zsh detailed syntax highlight setting ---
__light && ZSH_UNKNOWN=244     || ZSH_UNKNOWN=246
__light && ZSH_RESERVED=166    || ZSH_RESERVED=180
__light && ZSH_COMMAND=39      || ZSH_COMMAND=117
__light && ZSH_ALIAS=39        || ZSH_ALIAS=117
__light && ZSH_BUILTIN=32      || ZSH_BUILTIN=39
__light && ZSH_FUNCTION=62     || ZSH_FUNCTION=105
__light && ZSH_SEPARATOR=45    || ZSH_SEPARATOR=159
__light && ZSH_PATH=34         || ZSH_PATH=157
__light && ZSH_GLOB=105        || ZSH_GLOB=177
__light && ZSH_OPTION=70       || ZSH_OPTION=227
__light && ZSH_OPTION_LONG=70  || ZSH_OPTION_LONG=222
__light && ZSH_STRING=136      || ZSH_STRING=208
__light && ZSH_CMDEXPAND=100   || ZSH_CMDEXPAND=136
__light && ZSH_DEFAULT=240     || ZSH_DEFAULT=250
