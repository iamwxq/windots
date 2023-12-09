# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias zshrc='nvim ~/.zshrc'
alias so='source ~/.zshrc'

# Plugins
## zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Local bin
export PATH=$PATH:$HOME/.local/bin

# Starship
eval "$(starship init zsh)"

# Yazi
export PATH=$PATH:/home/iamwxq/develop/yazi

# Dprint
export DPRINT_HOME=/home/iamwxq/.dprint
export PATH=$PATH:$DPRINT_HOME/bin

# NeoVim
export PATH=$PATH:/home/iamwxq/develop/neovim/nvim-linux64/bin

# Lua
export PATH=$PATH:/home/iamwxq/develop/lua/lua/src
export PATH=$PATH:/home/iamwxq/develop/lua/luarocks/src/bin

# Rust
export CARGO_HOME=/home/iamwxq/develop/rust/cargo
export RUSTUP_HOME=/home/iamwxq/develop/rust/rustup
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export PATH=$PATH:$CARGO_HOME/bin

# Go
export GO111MODULE=on
export GOPROXY="https://goproxy.cn,direct"
export GOPATH=/home/iamwxq/develop/golang/
export GOROOT=/home/iamwxq/develop/golang/go
export GOCACHE=/home/iamwxq/develop/golang/cache
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Node
export NODE_HOME=/home/iamwxq/develop/node/nodejs # linked to /usr/bin/
export PNPM_HOME=/home/iamwxq/develop/node/pnpm
export PATH=$PATH:/home/iamwxq/develop/node/npm/global/bin # linked to /usr/bin/
export PATH=$PATH:/home/iamwxq/develop/node/yarn/global/bin
export PATH=$PATH:$PNPM_HOME/bin

# Cmake
export PATH=$PATH:/home/iamwxq/develop/cmake/cmake-linux-x86_64/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
export CONDA_PREFIX=/home/iamwxq/develop/miniconda3/envs # for venv-selector to search conda envs
__conda_setup="$('/home/iamwxq/develop/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/iamwxq/develop/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/iamwxq/develop/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/iamwxq/develop/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/home/iamwxq/.bun/_bun" ] && source "/home/iamwxq/.bun/_bun"

