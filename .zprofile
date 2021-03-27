# > [Development Environment]
# change $PATH to include the usr local sbin folder
export PATH="/usr/local/sbin:$PATH"

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
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home"
jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}


# Android
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"

# Flutter
export PATH="$HOME/development/flutter/bin:$PATH"

# golang
export GOPATH="$HOME/workspace/golang"
# export PATH="$GOPATH/bin:$PATH"

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




# Configuring Homebrew completions in zsh with oh-my-zsh
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
