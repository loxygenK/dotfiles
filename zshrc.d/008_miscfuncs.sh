function t()
{
  tmux new-session -s $(pwd |sed -E 's!^.+/([^/]+/[^/]+)$!\1!g' | sed -e 's/\./-/g')
}

function psgrep() {
  ps aux | grep -v grep | grep "USER.*COMMAND"
  ps aux | grep -v grep | grep $1
}

function dstop()
{
  docker stop $(docker ps -a -q);
}

function drm()
{
  docker rm $(docker ps -a -q);
}

# -----------------------------
# Git
# -----------------------------

function is_in_git_repo() {
	[ -d "./.git" ]
}

function gt() {
  is_in_git_repo || return
  git tag --sort -version:refname |
  fzf-down --multi --preview-window right:70% \
    --preview 'git show --color=always {} | head -200'
}

function gr() {
  is_in_git_repo || return
  git remote -v | awk '{print $1 "\t" $2}' | uniq |
  fzf-down --tac \
    --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" {1} | head -200' |
  cut -d$'\t' -f1
}

function gs() {
  is_in_git_repo || return
  git stash list | fzf-down --reverse -d: --preview 'git show --color=always {1}' |
  cut -d: -f1
}

function vcl(){
	vim clang-$1.c && gcc clang-$1.c -o out-c-$1.a && chmod 777 out-c-$1.a && ./out-c-$1.a
}

function vpp(){
	vim cplus-$1.cpp && g++ cplus-$1.cpp -o out-cpp-$1.a && chmod 777 out-cpp-$1.a && ./out-cpp-$1.a
}

function vpy(){
	vim py-$1.py && python py-$1.py
}

function color_sample(){
	echo -e "usage: \\\\e[38;5;\$color;1m ... \\\\e[m"
	for c in {000..255}; do echo -n "\e[38;5;${c};1m $c \e[m" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
}

function encrypt() {
	vim ~/temp_file && cat ~/temp_file | gpg --encrypt --armor | xsel --clipboard --input && rm -f ~/temp_file
}

function decrypt() {
	vim ~/temp_file && cat ~/temp_file | gpg && rm -f ~/temp_file
}

function hentai_yarn() {
	# more word needed, pr is welcome!
	# (yes im crazy, i dont even know why i did this)
	words=( 
		"やっ…んッ♡ " 
		"やぁんッ♡ " 
		"やぁぁ…んん♡ " 
		"やぁッ…ん♡ " 
		"やーん" 
		"にゃーん" 
	)
	local idx=$(($RANDOM % $((${#words[*]})) + 1))
	echo "\e[38;5;213;1myarn \"${words[$idx]}\"\e[m"
}
