# ~/.config/fish/functions/kitty_setup.fish

# Define common paths
set -g KITTY_PATH ~/.local/kitty.app/bin
set -g LOCAL_BIN_PATH ~/.local/bin

# Kitty specific setup
function setup_kitty
    # Ensure Kitty is in PATH
    fish_add_path $KITTY_PATH

    # Create symbolic links for kitty and kitten if not exist
    if not test -e $LOCAL_BIN_PATH/kitty
        ln -sf $KITTY_PATH/kitty $LOCAL_BIN_PATH/kitty
    end
    if not test -e $LOCAL_BIN_PATH/kitten
        ln -sf $KITTY_PATH/kitten $LOCAL_BIN_PATH/kitten
    end

    # Kitty shell integration
    if test -n "$KITTY_INSTALLATION_DIR"
        set --global KITTY_SHELL_INTEGRATION enabled
        source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
        set --prepend fish_complete_path "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_completions.d"
    end
end

