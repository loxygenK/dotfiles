# TODO: Plugin setting for fish.

set NVM_DIR "$HOME/.nvm"
function nvm
	bass source $NVM_DIR/nvm.sh --no-use ";" nvm $argv
end

nvm use default --silent
