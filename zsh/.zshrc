### 3 - ZSHRC ###
# Note to self:
# xcode-select -p was set to path: "/Library/Developer/CommandLineTools"

# Homebrew
eval "$(brew shellenv)"

## Source zsh plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# # Add site functions
# fpath+="$(brew --prefix)/share/zsh/site-functions"

# Aliases for common dirs
alias home='cd ~'

# System Aliases
alias ..='cd ..'
alias x='exit'

# ls > fzf Alias
alias ls='eza'
alias lsa='eza -a'

# grep > ripgrep (rg)
alias grep="rg"

# nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion 

# dotnet (.Net)
# export DOTNET_ROOT="/usr/local/opt/dotnet@8/libexec"
# export PATH="$PATH:$DOTNET_ROOT:/usr/local/opt/dotnet@8/bin"
# site-functions
# fpath+="/usr/local/opt/dotnet@8/share/zsh/site-functions"

# Enable CLI Colors for ZSH? Could never get it to work...
export COLORTERM="xterm-256color"
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history 

#bind up and down keys to search history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Starship
eval "$(starship init zsh)"
