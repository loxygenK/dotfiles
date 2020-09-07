function q() {
	echo -e "\nyou are about to quit; really? [yn]"
	read -q && exit
	echo -e "\n"
	zle-line-init
}

function "q!"() {
	exit
}

zle -N q
zle -N "q!"
