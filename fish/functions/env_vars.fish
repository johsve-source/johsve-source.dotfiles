# ~/.config/fish/functions/env_vars.fish

# Environment variables
function set_env_vars
    set -gx EDITOR nvim
    set -gx VISUAL $EDITOR
    set -gx FZF_DEFAULT_COMMAND 'fd --type file --follow --hidden --exclude .git'
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx FZF_ALT_C_COMMAND 'fd --type directory --follow --hidden --exclude .git'
    set -gx BUN_INSTALL "$HOME/.bun"
    set -gx MANPAGER "nvim +Man!"
    set -gx DOCKER_BUILDKIT 1
    set -gx COMPOSE_DOCKER_CLI_BUILD 1
end

