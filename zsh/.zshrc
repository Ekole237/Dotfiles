
############

# by Flo Slv

# ~/.zshrc


# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="agnoster"

plugins=(
	git
	command-not-found
	zsh-autosuggestions
	zsh-syntax-highlighting
	rust
)

source $ZSH/oh-my-zsh.sh


# Add ctrl+space to autocomplete in prompt.
bindkey '^ ' autosuggest-accept


# Remove all unnecessary aliases created by oh-my-zsh
unalias ${(k)aliases}
unalias "..."
unalias "...."
unalias "....."
unalias "......"


alias c="clear"


# Change directory aliases
alias d="cd ~/Ekodev"
alias dev="cd ~/Ekodev/Dev"
alias dot="cd ~/Ekodev/Dotfiles"


# List aliases
alias la="ls -lAh"
alias ll="ls -l"
alias ls="ls --color=tty"


# TMUX aliases
alias tm="tmux -f ~/Ekodev/Dotfiles/tmux/.tmux.conf new -s"
alias tma="tmux attach-session" # The last session.
alias tman="tmux attach-session -t"
alias tmls="tmux ls"
alias tmk="tmux kill-session -t"


# Git aliases
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpo='git pull origin'


# fdfind alias
alias fd="fdfind"
alias sd='cd $(fdfind --type d | fzf)'


# Rust aliases
alias cdoc="cargo doc --open"


# BATCAT alias
alias b='batcat'


# Add Github key to SSH agent.
alias sa="eval `ssh-agent`"
alias ss="ssh-add ~/.ssh/id_ed25519"


# MongoDB aliases
alias ms="sudo systemctl start mongod"
alias mi="sudo systemctl status mongod"
alias md="sudo systemctl stop mongod"
alias mr="sudo systemctl restart mongod"


# Find the name of WM_CLASS to set in i3 config file.
alias xg="xprop | grep WM_CLASS"


# If UBUNTU SOFTWARE does not load anymore.
alias ubuntu-software="killall snap-store"


# Launch Gnome Control Center
alias settings="env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"


# Launch gitui app.
alias ui="gitui"


# NordVPN
alias ndusa="nordvpn connect us8432"
alias ndde="nordvpn connect de824"


# Set VIM as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

alias n="nvim"
alias vim="nvim"


# fzf aliases
alias ff="fzf"
alias ffp"=fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias ft="fzf-tmux"
alias ftt="fzf-tmux -p"
alias fft"=fzf-tmux -p --preview 'batcat --style=numbers --color=always --line-range :500 {}'"

# fzf config
export FZF_DEFAULT_OPTS='--height=30% --border'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
--color=fg:#CCCCCC,bg:#24283b,hl:#eb6f92
--color=fg+:#908caa,bg+:#2C3043,hl+:#908caa
--color=info:#9ccfd8,prompt:#f6c177,pointer:#c4a7e7
--color=marker:#ebbcba,spinner:#eb6f92,header:#ebbcba"

bindkey '^j' fzf-cd-widget
export FZF_ALT_C_COMMAND="fdfind --hidden"
export FZF_DEFAULT_COMMAND="fdfind --hidden" # --no-ignore to search .gitignore files
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Colored man
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# Add ~/.local/bin directory to the PATH
export PATH="/home/ekodev/.local/bin:$PATH"


# Add ~/.config as XDG_CONFIG_HOME
export XDG_CONFIG_HOME=$HOME/.config


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Created by `pipx` on 06-10-2022 21:26:03
export PATH="$PATH:/home/ekodev/.local/bin"



# Zoxide
eval "$(zoxide init zsh)"


# # Starship
# eval "$(starship init zsh)"

