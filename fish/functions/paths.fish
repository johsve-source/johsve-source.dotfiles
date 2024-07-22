# ~/.config/fish/functions/paths.fish

# Path additions
function add_paths
    fish_add_path $HOME/.fnm $HOME/.cargo/bin $LOCAL_BIN_PATH $HOME/.bun/bin
end

