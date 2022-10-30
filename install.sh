# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages (git, git-secret, gh (GitHub cli), stow, nvm)
brew install git
brew install git-secret
# brew install gh
brew install stow
brew install nvm

# Create SYMLinks
stow oh-my-zsh
stow powerlevel10k
stow zsh
stow git
stow git-cli
stow gpg

# Make necessary directories
mkdir ~/.nvm

# Use ZSH as default shell
# sudo chsh -s $(which zsh) $USER

# Restart zsh
exec zsh


