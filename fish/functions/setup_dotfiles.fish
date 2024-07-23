#!/usr/bin/env fish

function setup_dotfiles
    set dotfiles_dir ~/dotfiles
    set config_dir ~/.config

    # List of files/folders to symlink
    set files_to_link alacritty kitty fish starship.toml tmux nvim neofetch

    for file in $files_to_link
        set source_path $dotfiles_dir/$file
        set target_path $config_dir/$file

        # Move the file to dotfiles if it exists and isn't already there
        if test -e $target_path; and not test -e $source_path
            mv $target_path $source_path
            echo "Moved $target_path to $source_path"
        end

        # Create or update the symlink
        ln -sf $source_path $target_path
        if test $status -eq 0
            echo "Created symlink: $target_path -> $source_path"
        else
            echo "Failed to create symlink for $file"
        end
    end

    echo "Dotfiles setup complete!"
end

setup_dotfiles
