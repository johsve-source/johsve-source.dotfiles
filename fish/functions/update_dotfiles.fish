function update_dotfiles
    set dotfiles_dir ~/dotfiles
    set current_date (date "+%Y-%m-%d %H:%M:%S")

    # Change to dotfiles directory
    cd $dotfiles_dir

    # Check if there are any changes
    if test (git status --porcelain | wc -l) -eq 0
        echo "No changes in dotfiles. Exiting."
        return 0
    end

    # Add all changes
    git add .

    # Commit changes with timestamp
    git commit -m "Update dotfiles - $current_date"

    # Push to remote repository
    if git push origin main
        echo "Successfully pushed changes to remote repository."
    else
        echo "Failed to push changes. Please check your network connection or repository permissions."
    end

    # Return to previous directory
    cd -
end

# Function to watch for changes and update
function watch_dotfiles
    while true
        update_dotfiles
        sleep 300 # Wait for 5 minutes before checking again
    end
end

