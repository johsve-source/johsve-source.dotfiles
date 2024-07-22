# ~/.config/fish/config.fish

# Disable the default greeting message
set -g fish_greeting

# Enable minimal features for better performance
set -g fish_features minimal

# Enable 24-bit colors
set -g fish_term24bit 1

# Set TERM for Kitty
set -gx TERM xterm-kitty

# Fish colors optimized for Kitty
set -g fish_color_normal normal
set -g fish_color_command brblue
set -g fish_color_quote yellow
set -g fish_color_redirection bryellow
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_param brcyan
set -g fish_color_comment brgreen
set -g fish_color_match --background=brblue
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_search_match bryellow --background=brblack
set -g fish_color_operator brcyan
set -g fish_color_escape brcyan
set -g fish_color_autosuggestion brblack

# Load custom functions
source ~/.config/fish/functions/tool_install.fish
source ~/.config/fish/functions/kitty_setup.fish
source ~/.config/fish/functions/paths.fish
source ~/.config/fish/functions/env_vars.fish
source ~/.config/fish/functions/prompt_setup.fish
source ~/.config/fish/functions/zoxide_setup.fish
source ~/.config/fish/functions/custom_functions.fish
source ~/.config/fish/functions/rust_tools.fish

# Load aliases
source ~/.config/fish/aliases.fish

# Load local config if it exists
if test -f ~/.config/fish/local.fish
    source ~/.config/fish/local.fish
end

# fzf setup
if type -q fzf_key_bindings
    fzf_key_bindings
end

# fnm setup
if type -q fnm
    fnm env --use-on-cd | source
end

# Main interactive setup
if status is-interactive
    # Setup Kitty if using Kitty terminal
    if test "$TERM" = "xterm-kitty"
        setup_kitty
    end

    # Add paths
    add_paths

    # Set environment variables
    set_env_vars

    # Setup Starship prompt
    setup_starship

    # Setup zoxide
    setup_zoxide

    # Load local config
    load_local_config
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

