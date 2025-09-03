# ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# laravel
alias a="php artisan"

# symfony
alias sf="symfony console"

# github cli
alias grv="gh repo view --web"

# 1password (WSL Only)
#alias ssh='ssh.exe'
#alias ssh-add='ssh-add.exe'
