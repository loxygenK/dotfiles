function t
  tmux new-session -s (pwd | sed -E 's!^.+/([^/]+/[^/]+)$!\1!g' | sed -e 's/\./-/g')
end

function psgrep
  ps aux | grep -v grep | grep "USER.*COMMAND"
  ps aux | grep -v grep | grep $1
end

function dstop
  docker stop (docker ps -a -q);
end

function drm
  docker rm (docker ps -a -q);
end

# -----------------------------
# Git
# -----------------------------

function is_in_git_repo
  [ -d "./.git" ]
end

function gt
  is_in_git_repo || return
  git tag --sort -version:refname |
  fzf-down --multi --preview-window right:70% \
    --preview 'git show --color=always {} | head -200'
end

function gs
  is_in_git_repo || return
  git stash list | fzf-down --reverse -d: --preview 'git show --color=always {1}' |
  cut -d: -f1
end

function vc
  vim clang-$1.c && gcc clang-$1.c -o out-c-$1.a && chmod 777 out-c-$1.a && ./out-c-$1.a
end

function vpp
  vim cplus-$1.cpp && g++ cplus-$1.cpp -o out-cpp-$1.a && chmod 777 out-cpp-$1.a && ./out-cpp-$1.a
end

function vpy
  vim py-$1.py && python py-$1.py
end

function color_sample
  echo -e "usage: \\\\e[38;5;\$colorm ... \\\\e[m"
  for c in (seq 0 255)
    printf "\e[38;5;%dm %03d \e[m" $c $c
    [ (math $c%16) -eq 15 ] && echo
  end
  echo
end

function encrypt
  vim ~/temp_file && cat ~/temp_file | gpg --encrypt --armor | xsel --clipboard --input && rm -f ~/temp_file
end

function decrypt
  vim ~/temp_file && cat ~/temp_file | gpg && rm -f ~/temp_file
end

function hentai_yarn
  # more word needed, pr is welcome!
  # (yes im crazy, i dont even know why i did this)
  set words \
    "やっ…んッ♡ " \
    "やぁんッ♡ " \
    "やぁぁ…んん♡ " \
    "やぁッ…ん♡ " \
    "やーん" \
    "にゃーん"

  set word $words[(math (random) % (count $words) + 1)]
  echo -e "\e[38;5;213;1myarn \"$word\"\e[m"
end

function flutter_check
  echo "------------- FLUTTER ANALYZE -------------"
  flutter analyze
  set exit_code $status
  echo "-------------- FLUTTER TEST ---------------"
  if [ $exit_code -ne 0 ]
    echo "  Skipped; analyze failed"
    return $exit_code
  end
  flutter test
end

function cd
   builtin cd $argv
   if [ -e (pwd)/.git ];
      latest_commit 
   end
end

function flask_db_sync
	echo -e "\e[38;5;192;1mSyncronizing DB with current scheme.\e[m"
	echo -e "\e[38;5;192mMigrating...\e[m"
	flask db migrate
	echo -e "\e[38;5;192;1mUpgrading. Confirm?\e[m"
	if [ (read) = "y" ]
		echo -e "\e[38;5;192;1mConfirmed; upgrading...\e[m"
		flask db upgrade
	else
		echo -e "\e[38;5;192;1mCancelled.\e[m"
	end
end	

function jpost
	echo -ne "\e[38;5;248;1m"
	echo -n ">>" curl -X POST -H \"Content-Type: application/json\" -d \'$argv[2]\' -s $argv[1]
	echo -e "\e[m"
	echo -e "\e[38;5;192mPOSTING to \e[1m"$argv[1]"\e[m"
	echo -e "\e[38;5;192;1m ----- INPUT -----\e[m"
	echo $argv[2] | jq
	echo -e "\e[38;5;192;1m ----- OUTPUT -----\e[m"
	set result (curl -X POST -H "Content-Type: application/json" -d $argv[2] -s $argv[1])
	echo $result | jq
	if [ $status != 0 ]
		echo $result
	end
end

function jpostint
	set temp_file (mktemp "/tmp/jpost-interactive-to-"(echo $argv[1] | sed -e 's/\//->/g')"-XXXXXX.json")
	$EDITOR $temp_file
	cat $temp_file | jq -cM || return 1
	set json (cat $temp_file | jq -cM)
	jpost $argv[1] (cat $temp_file | jq -cM)
	rm $temp_file
end
