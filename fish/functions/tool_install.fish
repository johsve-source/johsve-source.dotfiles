function install_rust_tool
    set -l tool $argv[1]
    set -l crate $argv[2]
    set -l description $argv[3]

    if not command -v $tool &>/dev/null
        echo "$tool not found. $description"
        read -P "Install $tool? (y/n): " response
        if test "$response" = "y"
            echo "Installing $tool..."
            cargo install $crate
            if test $status -eq 0
                echo "$tool installed successfully."
            else
                echo "Failed to install $tool."
            end
        else
            echo "Skipping installation of $tool."
        end
    else
        echo "$tool is already installed."
    end
end

