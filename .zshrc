# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Homebrew's sbin folder
export PATH="/usr/local/sbin:$PATH"




# Path to your oh-my-zsh installation.
export ZSH="/Users/username/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder




# zsh-nvm Nvm Configuration
# Export nvm completion settings for zsh-nvm plugin. It must be set before zsh-nvm is loaded.
export NVM_COMPLETION=true
# Lazy Loading. It must be set before zsh-nvm is loaded.
export NVM_LAZY_LOAD=true




# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bgnotify
  docker
  git-flow-avh
  npm
  osx
  vagrant
  vscode
  web-search
  z
  zsh-better-npm-completion
  zsh-nvm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# > [Custom Aliases]

# proxy
# clashx proxy
alias clashx="export HTTP_PROXY=http://127.0.0.1:7890; export HTTPS_PROXY=http://127.0.0.1:7890; export ALL_PROXY=socks5://127.0.0.1:7890"
# trojan-qt5 proxy
alias trojan_qt5="export HTTP_PROXY=http://127.0.0.1:58591; export HTTPS_PROXY=http://127.0.0.1:58591; export ALL_PROXY=socks5://127.0.0.1:51837"
alias proxy_close="unset HTTP_PROXY; unset HTTPS_PROXY; unset ALL_PROXY"

# vagrant generic-arch
alias archlinux="cd ~/development/vagrant/arch; vagrant up; vagrant ssh"

# homebrew
# Wrap 'brew' to fix the problem of using pyenv with homebrew Homebrew
alias brew="env PATH='${PATH//$(pyenv root)\/shims:/}' brew"
alias brewup="brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor"





# > [Development Environment]

# curl
export PATH="/usr/local/opt/curl/bin:$PATH"

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# gnu-getopt
# export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# icu4c
# export PATH="/usr/local/opt/icu4c/bin:$PATH"
# export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# krb5
# export PATH="/usr/local/opt/krb5/bin:$PATH"
# export PATH="/usr/local/opt/krb5/sbin:$PATH"

# ncurses
# export PATH="/usr/local/opt/ncurses/bin:$PATH"

# openssl@1.1
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following to your ~/.zshrc:
# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use OpenSSL <1.1.
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# rbenv
eval "$(rbenv init -)"

# java: adoptopenjdk
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home"

# Android
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"

# Flutter
export PATH="$HOME/development/flutter/bin:$PATH"

# golang
export GOPATH="$HOME/development/golang"
export PATH="$GOPATH/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# yoi
export PATH="$HOME/development/yoi:$PATH"

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then
    eval "$(pyenv virtualenv-init -)";
fi





# > [Better Shell Experience]

# thefuck
eval "$(thefuck --alias)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# load fzf configuration
source "${HOME}/.config/fzf/config.zsh"

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh
alias lc="colorls -A --sd --sf --gs"



# > [Better Zsh]

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh





# > [Cross Shell Prompt]

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship
# load Spaceship prompot configuration
# source "${HOME}/.config/spaceship/config.zsh"

# Set Starship as a prompt
eval "$(starship init zsh)"
# load Starship prompt configuration
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"





# > [Shell Integration]

# Iterm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
