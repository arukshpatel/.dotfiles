# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages (git, git-secret, gh (GitHub cli), stow, nvm)
brew install git
brew install git-secret
brew install stow
brew install nvm
brew install pnpm

# Create SYMLinks
stow oh-my-zsh
stow powerlevel10k
stow zsh
stow git
stow gpg
stow iterm

### OPTIONAL ###
# Install Github CLI (uncomment line below)
# brew install gh && stow git-cli


# Make necessary directories
mkdir ~/.nvm
if brew ls --versions nvm > /dev/null;
then
    nvm install node;
else
    echo NVM NOT INSTALLED \n INSTALL USING \n brew install nvm;
fi

# Use ZSH as default shell
if $SHELL -eq /bin/zsh;
then
    echo ZSH is your default shell
else
    read -p 'Would you like to use ZSH as your default? y/n ' defaultShell
    if $defaultShell -eq 'y';
    then
        sudo chsh -s $(which zsh) $USER
        echo "ZSH set as your default shell."
    else
        echo Okay, we shall use the default shell.
        echo WARNING ⚠️ Please know some of the packages installed will not work.
    fi
fi

# Restart zsh
exec $SHELL


