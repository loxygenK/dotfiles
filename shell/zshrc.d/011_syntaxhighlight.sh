ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# --- Values
ZSH_HIGHLIGHT_STYLES[default]=fg=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=1,underline
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=4,bold

# --- Commands
ZSH_HIGHLIGHT_STYLES[command]=fg=12
ZSH_HIGHLIGHT_STYLES[precommand]=fg=4
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=12

# --- Command-ish thingies
ZSH_HIGHLIGHT_STYLES[alias]=fg=12,underline
ZSH_HIGHLIGHT_STYLES[builtin]=fg=12,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=14
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=14
ZSH_HIGHLIGHT_STYLES[assign]=none
ZSH_HIGHLIGHT_STYLES[redirect]=fg=3

# --- Paths
ZSH_HIGHLIGHT_STYLES[path]=fg=10
ZSH_HIGHLIGHT_STYLES[globbing]=fg=11

# --- Values
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=11
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=11
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=11
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=11
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=11
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=12
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=11

ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=14
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]=fg=14

# --- Brackets
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=none
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=none
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=none
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=none

# --- Matches
ZSH_HIGHLIGHT_PATTERNS+=('rm -*f* ' 'bg=1,fg=15')
