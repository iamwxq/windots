export COLORTERM=truecolor

# Starship
eval "$(starship init zsh)"

# Yazi
export PATH=$PATH:/home/stillwu/develop/yazi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias zshrc='nvim ~/.zshrc'
alias so='source ~/.zshrc'

# Plugins
# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-highlighting
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# catppuccin_mocha-zsh-syntax-highlighting
# source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Local bin
export PATH=$PATH:$HOME/.local/bin

# Dprint
export DPRINT_HOME=/home/stillwu/.dprint
export PATH=$PATH:$DPRINT_HOME/bin

# NeoVim
export PATH=$PATH:/home/stillwu/develop/neovim/nvim-linux64/bin

# Rust
export CARGO_HOME=/home/stillwu/develop/rust/cargo
export RUSTUP_HOME=/home/stillwu/develop/rust/rustup
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export PATH=$PATH:$CARGO_HOME/bin

# Go
export GO111MODULE=on
export GOPROXY="https://goproxy.cn,direct"
export GOPATH=/home/stillwu/develop/golang/
export GOROOT=/home/stillwu/develop/golang/go
export GOCACHE=/home/stillwu/develop/golang/cache
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Node
export NODE_HOME=/home/stillwu/develop/node/nodejs
export PNPM_HOME=/home/stillwu/develop/node/pnpm
export PATH=$PATH:/home/stillwu/develop/node/npm/global/bin
export PATH=$PATH:/home/stillwu/develop/node/yarn/global/bin
export PATH=$PATH:$PNPM_HOME/bin

# Cmake
export PATH=$PATH:/home/stillwu/develop/cmake/cmake-linux-x86_64/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
export CONDA_PREFIX=/home/stillwu/develop/miniconda3/envs # for venv-selector to search conda envs
__conda_setup="$('/home/stillwu/develop/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/stillwu/develop/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/stillwu/develop/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/stillwu/develop/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/home/stillwu/.bun/_bun" ] && source "/home/stillwu/.bun/_bun"

