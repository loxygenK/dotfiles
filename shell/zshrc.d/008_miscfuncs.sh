function color_sample(){
  echo -e "usage: \\\\e[38;5;\$color;1m ... \\\\e[m"
  for c in {00..15}; do echo -n "\e[38;5;${c};1m $c \e[m"; done;echo
  for c in {016..255}; do echo -n "\e[38;5;${c};1m $c \e[m" ; [ $((($c - 16)%12)) -eq 11 ] && echo;done;echo
}

function encrypt() {
  vim ~/temp_file && cat ~/temp_file | gpg --encrypt --armor | xsel --clipboard --input && rm -f ~/temp_file
}

function decrypt() {
  vim ~/temp_file && cat ~/temp_file | gpg && rm -f ~/temp_file
}

function hentai_yarn() {
  [ -v SKIP_HENTAI_YARN ] && return
  # more word needed, pr is welcome!
  # (yes im crazy, i dont even know why i did this)
  iyarn=("ああっ…" "あはっ…" "あんっ…" "はあっ…" "ははっ…" "はんっ…" "んあっ…" "んはっ…" "んんっ…"
    "うはっ" "んいっ!?" "あ゛がぁぁ" "んい゛ぃぃ" "ひぎぃぃぃぃぃ" "ぇぇぇぇ" "❤❤❤❤" "❤" "❤❤❤❤" "❤"
    "❤❤❤❤" "❤" "❤❤❤❤" "❤" "❤❤❤❤" "❤" "❤❤❤❤" "❤" "❤" "❤" "、" "❤❤❤❤" "  " "❤❤" "あん" "////"
    "//" "おﾞぅっﾞいﾞっ…" "大好き…なのぉッ…" "アギャァァァアア" "ら、らめぇえええええっ！" "ああ…んッ、やっ…ちょっ…"
    "ぁ、っう…ゃ" "も、ちょっ、と…" "ゆっく、り…" "めぇええ…""あはぁんっ////" "ふあっ…" "あん…" "あっあっあッくる…"
    "ぃ…イくぅううぉ" "っあ゛あ゛あ゛")
  word=""
  i=0
  while [ $i -lt 10 ]; do
    word="${word}${iyarn[$RANDOM % ${#iyarn[@]}]}"
    i=$(expr $i + 1)
  done
  echo "\e[38;5;213;1myarn \"${word}\"\e[m"
}

function beyond() {
  tmux split-window -b -l 66 ${*:-nvim}
}
