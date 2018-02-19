# java!
export JAVA_HOME="/usr/local/jdk-1.8.0"
export PATH=${PATH}:${JAVA_HOME}/bin

# our own tools
export PATH=${PATH}:~/bin

# make node/npm work better
mkdir -p ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=~/.npm-global/bin:${PATH}
