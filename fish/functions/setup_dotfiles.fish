#!/usr/bin/env fish

function setup_dotfiles
    set dotfiles_dir ~/dotfiles
    set config_dir ~/.config

    # List of files/folders to symlink
    set files_to_link alacritty kitty fish starship.toml tmux nvim neofetch

    for file in $files_to_link
        set source_path $config_dir/$file
        set target_path $dotfiles_dir/$file

        # Copy the file/directory to dotfiles if it exists and isn't already there
        if test -e $source_path; and not test -e $target_path
            if test -d $source_path
                cp -R $source_path $target_path
            else
                cp $source_path $target_path
            end
            echo "Copied $source_path to $target_path"
        end

        # Remove the original file/directory
        if test -e $source_path
            rm -rf $source_path
            echo "Removed original $source_path"
        end

        # Create the symlink
        ln -sf $target_path $source_path
        if test $status -eq 0
            echo "Created symlink: $source_path -> $target_path"
        else
            echo "Failed to create symlink for $file"
        end
    end

    echo "Dotfiles setup complete!"
end

setup_dotfiles

