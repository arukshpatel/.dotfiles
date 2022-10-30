# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew install git
brew install stow
brew install nvm

# Create SYMLinks
stow oh-my-zsh
stow powerlevel10k
stow zsh

# Make necessary directories
mkdir ~/.nvm

# Use ZSH as default shell
# sudo chsh -s $(which zsh) $USER

# Restart zsh
exec zsh


