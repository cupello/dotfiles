# This script installs other programs that are not managed
# by brew or that didn't fit into any of the other scripts

# This install Oh My ZSH framework
if [ -d "$HOME/.oh-my-zsh" ]
then
    echo "Oh my ZSH is already installed, skipping..."
else
    echo "installing oh my zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# This installs the spaceship theme for zsh
# https://github.com/denysdovhan/spaceship-prompt
if [ -d "$ZSH/custom/themes/spaceship-prompt" ]
then
    echo "spaceship-prompt is already installed, skipping..."
else
    echo "installing spaceship-prompt..."
    sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt"
    ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
fi

if [ -d "~/.tmux/plugins/tpm" ]
then
    echo "tmux tpm is already installed, skipping..."
else
    echo "installing tmux tpm..."
    sudo git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
