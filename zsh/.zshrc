eval "$(starship init zsh)"

alias ll="ls -alF"
alias la="ls -A"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
export GOPATH=/home/iamwxq/tool/go/
export GO111MODULE=on
export GOPROXY="https://goproxy.cn"
export GOCACHE=/home/iamwxq/tool/go/cache
export PATH=$PATH:$GOPATH/bin 

# rust
export CARGO_HOME=/home/iamwxq/tool/rust/cargo
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export RUSTUP_HOME=/home/iamwxq/tool/rust/rustup
export PATH=$PATH:$CARGO_HOME/bin

# deno
export DENO_DIR=/home/iamwxq/tool/deno/module/
export DENO_INSTALL_ROOT=/home/iamwxq/tool/deno/bin/
export PATH=$PATH:$DENO_INSTALL_ROOT

# electron
export ELECTRON_MIRROR="https://npmmirror.com/mirrors/electron"

# bun completions
[ -s "/home/iamwxq/.bun/_bun" ] && source "/home/iamwxq/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
