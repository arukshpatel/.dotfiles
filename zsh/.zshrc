### 3 - ZSHRC ###

# Homebrew sbin
# export PATH="/usr/local/sbin:$PATH"

# # Source zsh plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# # Add site functions
# fpath+="$(brew --prefix)/share/zsh/site-functions"

# Aliases for common dirs
alias home="cd ~"

# System Aliases
alias ..="cd .."
alias x="exit"

# ls > fzf Alias
alias ls="eza"

# nvm 
#export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion 


# Enable CLI Colors for ZSH? Could never get it to work...
export COLORTERM="xterm-color256"

# zsh vi mode
#bindkey -v
#export KEYTIMEOUT=1

#bind up and down keys to search history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Starship
eval "$(starship init zsh)"
