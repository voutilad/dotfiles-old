# pull in skel
. /etc/skel/.profile

# help guide gyp-based things to use clang
export CC=clang
export CXX=clang++

# bold b/w prompt
export PS1="\[\033[1m\]\h[\W]\$\[\033[00m\] "

# java!
export JAVA_HOME="/usr/local/jdk-1.8.0"
export PATH=${JAVA_HOME}/bin:${PATH}

# our own tools
export PATH=~/bin:${PATH}

# something wrong with ibus and intellij
export IBUS_ENABLE_SYNC_MODE=1

# make node/npm work better
mkdir -p ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=~/.npm-global/bin:${PATH}

# makes virtualenv get around our OpenBSD setup
export WORKON_HOME=~/.venv

# GOPATH cause Go makes things goofy with workspaces
export GOPATH=~/src/go
export PATH="${PATH}:${GOPATH}/bin"

# GPG pinentry support
export GPG_TTY="$(tty)"

