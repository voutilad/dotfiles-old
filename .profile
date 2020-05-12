# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

# help guide gyp-based things to use clang
export CC=clang
export CXX=clang++

# bold b/w prompt
export PS1="\[\033[1m\]\h[\W]\$\[\033[00m\] "

# java!
export JAVA_HOME="/usr/local/jdk-11"
export PATH=${JAVA_HOME}/bin:${PATH}

# make node/npm work better
mkdir -p ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=~/.npm-global/bin:${PATH}

# makes virtualenv get around our OpenBSD setup
export WORKON_HOME=~/.venv

# GOPATH cause Go makes things goofy with workspaces
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

# GPG pinentry support
export GPG_TTY="$(tty)"

# CVS mirror
export CVSROOT=anoncvs@anoncvs4.usa.openbsd.org:/cvs
