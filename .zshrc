# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.p10k.zsh
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source /opt/homebrew/etc/profile.d/z.sh # Add yarn to the PATH export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add flutter support
export PATH="$PATH:$HOME/workspace/flutter/bin"

# Set git PATH
#export git.path="/opt/homebrew/bin/git"

# Add vscode command line support
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add used aliases to the prompt
alias brokerst="yarn start --env app=qa --env brand=bitcointrade"
alias gc="git commit"
alias gcp="git cherry-pick"
alias gs="git status"
alias l="ls -la"
alias chrome-nocors="open -n -a \"Google Chrome\" --args --user-data-dir=/tmp/temp_chrome_user_data_dir --disable-web-security"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias tldrf='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'

autoload -Uz compinit && compinit

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Add local bin to the path
export PATH="$HOME/.local/bin:$PATH"

# Export private keys
source ./private-keys.sh
