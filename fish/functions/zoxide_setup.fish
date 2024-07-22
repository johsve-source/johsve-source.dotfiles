# ~/.config/fish/functions/zoxide_setup.fish

# zoxide (smart cd command)
function setup_zoxide
    if type -q zoxide
        zoxide init fish | source
    end
end

