# This script installs other programs that are not managed
# by brew or that didn't fit into any of the other scripts

# This installs the spaceship theme for zsh
# https://github.com/denysdovhan/spaceship-prompt
if [ -d "$ZSH/custom/themes/spaceship-prompt" ]
then
    echo "spaceship-prompt is already installed, skipping..."
else
    echo "installing spaceship-prompt..."
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt"
    ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
fi


if [ -d "~/.local/share/nvim/site/autoload/plug.vim" ]
then
    echo "vim-plug is already installed, skipping..."
else
    echo "installing vim-lug..."
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ -d "~/.tmux/plugins/tpm" ]
then
    echo "tmux tpm is already installed, skipping..."
else
    echo "installing tmux tpm..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
