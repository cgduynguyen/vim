set -e

WORKING_DIR=".devcontainer"

# Install required packages
case "$OSTYPE" in
darwin*) sh $WORKING_DIR/install-mac.sh ;;
linux*) sh $WORKING_DIR/install-linux.sh ;;
*)
  echo "Unregcognized OS"
  exit $ERRCODE
  ;;
esac

# Config git
git config --global diff.tool vimdiff
git config --global difftool.prompt false

# Download zsh plugins
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy dotfiles
cp .devcontainer/.zshrc ~/.zshrc
cp .devcontainer/.p10k.zsh ~/.p10k.zsh
cp .devcontainer/.tmux.conf ~/.tmux.conf
cp .devcontainer/.vimrc ~/.vimrc
