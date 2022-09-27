set -e

sudo apt -y install tmux vim moreutils

git config --global diff.tool vimdiff
git config --global difftool.prompt false

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp .devcontainer/.zshrc ~/.zshrc
cp .devcontainer/.p10k.zsh ~/.p10k.zsh
cp .devcontainer/.vimrc ~/.vimrc

