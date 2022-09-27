set -e

sudo apt update
sudo apt -y install zsh tmux vim moreutils

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install lts/fermium
