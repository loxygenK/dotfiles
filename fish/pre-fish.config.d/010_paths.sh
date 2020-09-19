# -----------------------------
# PATH
# -----------------------------
case "${OSTYPE}" in
  darwin*)
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH
  ;;
esac

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
if which go > /dev/null 2>&1  ; then
  export CGO_ENABLED=1
  export GOPATH=$HOME/dev/go
  export PATH=$PATH:$(go env GOROOT)/bin:$GOPATH/bin
fi

# Android (especially react-native)
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.selfmade_nice_programs

eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Flutterのために
export PATH="$PATH:$HOME/.flutter/bin"

# Dart SDKのために
export PATH="$PATH:/usr/lib/dart/bin"
export PATH="~/.pub-cache/bin:$PATH"

export PATH="$PATH:$HOME/.blin-tool"

# Rustのために
export PATH="$HOME/.cargo/bin:$PATH"

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=$(tty)

export PATH="$PATH:`"yarn" global bin`"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/flisan/.sdkman"
[[ -s "/home/flisan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/flisan/.sdkman/bin/sdkman-init.sh"

