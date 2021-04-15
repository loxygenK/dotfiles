# -----------------------------
# Python
# -----------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
alias pipallupgrade="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"

# -----------------------------
# Golang
# -----------------------------

######################
# PATH configuration #
######################

# No dependencies

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.selfmade_nice_programs

export PATH="$PATH:$HOME/.flutter/bin"

export PATH="$PATH:/usr/lib/dart/bin"
export PATH="~/.pub-cache/bin:$PATH"

export PATH="$PATH:$HOME/.blin-tool"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$PATH:$HOME/.misc"
export PATH="$PATH:$HOME/.executable"

# Depending

if which go > /dev/null 2>&1  ; then
  export CGO_ENABLED=1
  export GOPATH=$HOME/dev/go
  export PATH=$PATH:$(go env GOROOT)/bin:$GOPATH/bin
fi

# Other environment variables

export NVM_DIR="$HOME/.nvm"
export GPG_TTY=$(tty)
export SDKMAN_DIR="/home/flisan/.sdkman"

# scripts

if [ "$1" = "no-script" ]; then
  echo "Script suppressed; Exiting"
  return
fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(rbenv init -)"

source /usr/share/nvm/init-nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "/home/flisan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/flisan/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Deferred

if which yarn > /dev/null 2>&1; then
  export PATH="$PATH:`"yarn" global bin`"
fi


