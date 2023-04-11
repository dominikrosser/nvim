# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add paths to the PATH variable
export PATH="$HOME"/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/sbin:/bin:$PATH
export PATH="$PATH":$HOME/.cargo/bin
export PATH="$PATH":$HOME/.local/bin/zoxide

plugins=(git)

# run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

zstyle ':omz:update' mode auto      # update automatically without asking

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="exa -l -g -a --icons --git"
alias llt="exa -1 -a --icons --tree --git-ignore"

alias szsh="source ~/.zshrc"

# Change directory to your dev folder
function ndev {
    local subfolder="$1"
    local folder="$HOME/dev"
    local path="$folder"
    if [[ -n "$subfolder" ]]; then
        path="$folder/$subfolder"
    fi
    if [[ -d "$path" ]]; then
        cd "$path"
        /usr/bin/nvim .
    else
        echo "Folder not found: $path"
    fi
}

# Change directory to your nvim config folder
function nconf {
    local path="$HOME/.config/nvim"
    if [[ -d "$path" ]]; then
        cd "$path"
        /usr/bin/nvim .
    else
        echo "Folder not found: $path"
    fi
}

# Change directory to your Praktikum P2 folder
function np2 {
    local path="$HOME/dev/p2"
    if [[ -d "$path" ]]; then
        cd "$path"
        /usr/bin/nvim .
    else
        echo "Folder not found: $path"
    fi
}

# Change directory to your .zshrc config files
function nzsh {
    command nvim "$HOME/.zshrc"
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
