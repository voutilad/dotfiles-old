# bold b/w prompt

function get_branch {
	if [ -a ".git" ]; then
		echo "($(git rev-parse --abbrev-ref HEAD))"
	else
		echo ""
	fi
}

export PS1="\[\033[1m\]\h[\W]\[\033[00m\]$(get_branch)\$ "

# java!
export JAVA_HOME="/usr/local/jdk-1.8.0"
export PATH=${PATH}:${JAVA_HOME}/bin

# our own tools
export PATH=${PATH}:~/bin

# make node/npm work better
mkdir -p ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=~/.npm-global/bin:${PATH}
