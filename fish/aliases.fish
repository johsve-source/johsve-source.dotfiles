# Fish Configuration
# ------------------
# Reload Fish config
abbr -a reload "source ~/.config/fish/config.fish && source ~/.config/fish/aliases.fish"

# Quick edit of config files
abbr -a fishconf "nvim ~/.config/fish/config.fish"
abbr -a aliasconf "nvim ~/.config/fish/aliases.fish"

# File and Directory Operations
# -----------------------------
# List Files (exa / lsd)
install_rust_tool exa exa "exa is a modern replacement for ls with more features and better formatting."
if type -q exa
    abbr -a ls "exa -la"
    abbr -a e "exa"
    abbr -a ea "exa -a"
    abbr -a el "exa -l"
    abbr -a ela "exa -la"
    abbr -a et "exa -T"
    abbr -a eta "exa -Ta"
else
    install_rust_tool lsd lsd "lsd is a modern replacement for ls with better formatting."
    if type -q lsd
        abbr -a ls "lsd -la"
    end
end

# File Viewing (bat)
install_rust_tool bat bat "bat is a cat clone with syntax highlighting and Git integration."
if type -q bat
    alias cat "bat --style=plain"
    abbr -a b "bat"
end

# Directory Navigation
abbr -a .. "cd .."
abbr -a ... "cd ../.."
abbr -a .... "cd ../../.."
abbr -a ..... "cd ../../../.."

# Smart Directory Navigation (zoxide)
install_rust_tool zoxide zoxide "zoxide is a smarter cd command, inspired by z and autojump."
if type -q zoxide
    abbr -a cd "z"
end

# File Finding (fd)
install_rust_tool fd fd-find "fd is a simple, fast, and user-friendly alternative to find."
if type -q fd
    abbr -a f "fd"
end

# Directory Tree (broot)
install_rust_tool broot broot "broot is a new way to see and navigate directory trees."
if type -q broot
    abbr -a tree "broot"
end

# Disk Usage Analysis
# -------------------
# Directory Size (dust)
install_rust_tool dust du-dust "dust is a more intuitive version of du, showing disk usage."
abbr -a dsize "dust -d 0"
abbr -a dust1 "dust -d 1"
abbr -a dust2 "dust -d 2"
abbr -a dust3 "dust -d 3"

# Alternative Disk Usage Analyzer (dua)
install_rust_tool dua dua-cli "dua is a tool to conveniently learn about the disk usage of directories."
if type -q dua
    abbr -a du "dua"
end

# Text Processing and Searching
# -----------------------------
# Grep Alternative (ripgrep)
install_rust_tool rg ripgrep "ripgrep is a line-oriented search tool that recursively searches your current directory for a regex pattern."
if type -q rg
    abbr -a grep "rg"
end

# Sed Alternative (sd)
install_rust_tool sd sd "sd is an intuitive find & replace CLI (sed alternative)."
if type -q sd
    abbr -a sed "sd"
end

# System and Process Management
# -----------------------------
# Process Viewer (procs)
install_rust_tool procs procs "procs is a modern replacement for ps written in Rust."
if type -q procs
    abbr -a ps "procs"
end

# File Operations
# ---------------
# Copy Command (xcp)
install_rust_tool xcp xcp "xcp is an extended cp command with additional features."
if type -q xcp
    abbr -a cp "xcp"
end

# Diff Tool (delta)
install_rust_tool delta git-delta "delta is a syntax-highlighting pager for git, diff, and grep output."
if type -q delta
    abbr -a diff "delta"
end

# Compression Tool (ouch)
install_rust_tool ouch ouch "ouch is a painless compression and decompression tool."
if type -q ouch
    abbr -a tar "ouch"
end

# Git Shortcuts
# -------------
abbr -a g "git status"
abbr -a ga "git add ."
abbr -a gc "git commit -m"
abbr -a gp "git push origin"
abbr -a gl "git pull origin"

# System Commands
# ---------------
# Open Files
alias open "xdg-open"

# Output PATH
alias path 'echo -e $PATH | tr " " "\n"'

# Package Management (apt)
abbr -a install "sudo apt update && sudo apt install"
abbr -a update "sudo apt update"
abbr -a upgrade "sudo apt upgrade"

# Editor
# ------
# Open NVIM
abbr -a n "nvim"

