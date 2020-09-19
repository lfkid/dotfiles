# > [Development Environment]

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

# gnutls
# If you are going to use the Guile bindings you will need to add the following
# to your .bashrc or equivalent in order for Guile to find the TLS certificates database:
# export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/

# guile
# Guile libraries can now be installed here:
  # Source files: /usr/local/share/guile/site/3.0
  # Compiled files: /usr/local/lib/guile/3.0/site-ccache
  # Extensions: /usr/local/lib/guile/3.0/extensions
# Add the following to your .bashrc or equivalent:
  # export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  # export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  # export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"


# To use the DocBook package in your XML toolchain,
# you need to add the following to your ~/.bashrc:
# export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"


# homebrew openjdk
# For the system Java wrappers to find this JDK, symlink it with
# sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
# openjdk is keg-only, which means it was not symlinked into /usr/local, because it shadows the macOS `java` wrapper.
# If you need to have openjdk first in your PATH run:
# echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc


# openssl@1.1
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following to your ~/.zshrc:
# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use OpenSSL <1.1.
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# rbenv
eval "$(rbenv init -)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

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

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then
    eval "$(pyenv virtualenv-init -)";
fi
