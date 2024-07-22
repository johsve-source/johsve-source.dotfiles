# ~/.config/fish/functions/custom_functions.fish

# Custom functions
function update_node_to_latest
    set latest_version (fnm list-remote | grep -v 'LTS' | tail -n1)
    fnm install $latest_version
    fnm use $latest_version
    fnm default $latest_version
end

function serve
    python -m http.server
end

function nvm
    fnm $argv
end

# Load local config if it exists
function load_local_config
    if test -f $FISH_CONFIG_PATH/local.fish
        source $FISH_CONFIG_PATH/local.fish
    end
end

