ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

function configure_syntax_highlight() {

  local error_color=1
  local command_color=13
  local builtin_color=5
  local function_color=9

  local symbol_color=4

  local path_color=10

  local option_color=11

  # --- Values
  ZSH_HIGHLIGHT_STYLES[default]=fg=none
  ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=1,underline
  ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=$builtin_color,bold

  # --- Commands
  ZSH_HIGHLIGHT_STYLES[command]=fg=$command_color,bold
  ZSH_HIGHLIGHT_STYLES[precommand]=fg=$builtin_color,bold
  ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=$command_color,bold

  # --- Command-ish thingies
  ZSH_HIGHLIGHT_STYLES[alias]=fg=$function_color
  ZSH_HIGHLIGHT_STYLES[builtin]=fg=$command_color,underline,bold
  ZSH_HIGHLIGHT_STYLES[function]=fg=$command_color
  ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=$symbol_color
  ZSH_HIGHLIGHT_STYLES[assign]=none
  ZSH_HIGHLIGHT_STYLES[redirect]=fg=$symbol_color

  # --- Paths
  ZSH_HIGHLIGHT_STYLES[path]=fg=$path_color
  ZSH_HIGHLIGHT_STYLES[globbing]=fg=$symbol_color

  # --- Values
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=$option_color
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=$option_color
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=$option_color
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=$option_color
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=$option_color
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=$command_color
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=$option_color

  ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=$command_color
  ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]=fg=$command_color

  # --- Brackets
  ZSH_HIGHLIGHT_STYLES[bracket-level-1]=none
  ZSH_HIGHLIGHT_STYLES[bracket-level-2]=none
  ZSH_HIGHLIGHT_STYLES[bracket-level-3]=none
  ZSH_HIGHLIGHT_STYLES[bracket-level-4]=none

  # --- Matches
  ZSH_HIGHLIGHT_PATTERNS+=('rm -*f* ' 'bg=1,fg=15')

}

configure_syntax_highlight
