set -e

sudo apt -y install moreutils

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp .devcontainer/.zshrc $HOME/.zshrc
cp .devcontainer/.p10k.zsh $HOME/.p10k.zsh

sudo apt -y install neovim xsel wl-clipboard ripgrep

npm i -g neovim

git clone https://github.com/LunarVim/nvim-basic-ide.git $HOME/.config/nvim
