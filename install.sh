#!sh

if ! type python3 >> /dev/null; then
  echo "[!] Python 3 seems not to be installed."
  echo "    Please install Python 3 first."
  return 1
fi

python3 install/main.py
