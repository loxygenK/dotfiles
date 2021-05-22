which starship 2>&1 1>/dev/null
if [ $? -ne 0 ]; then
  echo "[!] Starship is not installed!"
  echo "    Installing..."
  sh -c "$(curl -fsSL https://starship.rs/install.sh)"
fi
