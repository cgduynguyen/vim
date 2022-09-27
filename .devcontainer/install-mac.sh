set -e

NONINTERACTIVE=1

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install zsh tmux moreutils
brew install zsh tmux moreutils

# Install nerd-font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install lts/fermium
