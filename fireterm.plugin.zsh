PLUGIN_PATH=$(dirname $0)

if [ -f $PLUGIN_PATH/aliases.zsh ]; then . $PLUGIN_PATH/aliases.zsh; fi

export PATH="$HOME/.composer/vendor/bin:$HOME/.nvm/versions/node/current/bin:/opt/homebrew/bin:$PATH"
