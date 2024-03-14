export ZSH="/Users/stanislavjakuschevskij/.oh-my-zsh"

# theme
ZSH_THEME="aphrodite"

plugins=(
  git
  sublime
  colored-man-pages
  node
  colorize
  macos
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Make terminal better
alias ls='ls -Gp'                           # Preferred ‘ls’ implementation
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias f='open -a Finder ./'                 # f:Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:Go Home
alias c='clear'                             # c:Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:Echo all executable Paths
alias tree0='tree -d -L 1'                  # list directories depth level 0
alias tree1='tree -d -L 2'                  # list directories depth level 1

# Full recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# npm
alias nlsg='npm ls -g --depth=0'                        # list global packages with depth 0
alias nls='npm ls --depth=0'                            # list local packages with depth 0

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# go
export GO111MODULE=auto
export GOBIN=$PWD/bin
export GOPATH="$HOME/go"
export PATH="$GOBIN:$GOPATH/bin:$PATH"

# k8
alias k='kubectl'
alias kdl='kubectl delete'
alias kd='kubectl describe'

# openshift
if [[ "$PATH" == *"/Users/stanislavjakuschevskij/.crc/bin/oc"* ]]; then
  alias o='oc'
fi

# tekton completion
autoload -U compinit; compinit

# java
## maven
export M2_HOME="/Users/stanislavjakuschevskij/Applications/apache-maven-3.8.7"
export PATH="${M2_HOME}/bin:${PATH}"

# open ai
# export ...
alias gpt=~/Dev/_/tools/gpt-cli/gpt.py

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Load Angular CLI autocompletion.
source <(ng completion script)
