#!/bin/bash

# Check if Neovim is installed
if command -v nvim &>/dev/null; then
    echo "Neovim is already installed."
else
    echo "Neovim is not installed. Installing..."

    # Check if Homebrew is installed
    if command -v brew &>/dev/null; then
        # Install Neovim using Homebrew
        brew install neovim
        echo "Neovim has been installed using Homebrew."
    else
        echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh/"
        exit 1
    fi
fi

# Check if Ghostty is installed
if command -v ghostty &>/dev/null; then
    echo "Ghosttty is already installed."
else
    echo "Ghostty is not installed. Installing..."

    # Check if Homebrew is installed
    if command -v brew &>/dev/null; then
        # Install Ghosttty using Homebrew
        brew install ghostty
        echo "Ghostty has been installed using Homebrew."
    else
        echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh/"
        exit 1
    fi
fi

# Check if Starship is installed
if command -v starship &>/dev/null; then
    echo "Starship is already installed."
else
    echo "Starship is not installed. Installing..."

    # Check if Homebrew is installed
    if command -v brew &>/dev/null; then
        # Install Starship using Homebrew
        brew install starship
        echo "Starship has been installed using Homebrew."
    else
        echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh/"
        exit 1
    fi
fi

# Clone the repository
echo "Cloning the repository..."
git clone git@github.com:brightkut/mine-vim.git

# Check if clone was successful
if [ $? -eq 0 ]; then
    echo "Repository cloned successfully."
else
    echo "Failed to clone the repository. Please check your Git setup."
    exit 1
fi

# Check if ~/.config/starship.toml exists, and if it does, rename it to ~/.config/starship.bak.toml
if [ -f ~/.config/starship.toml ]; then
    echo "Backing up existing starship.toml to starship.bak.toml..."
    mv ~/.config/starship.toml ~/.config/starship.bak.toml
    echo "Existing starship.toml has been backed up to starship.bak.toml."
fi

# Navigate to the 'starship' directory and copy the 'starship.toml' file
echo "Copying starship.toml to ~/.config/starship.toml..."

# Check if the directory exists before copying
if [ -d "mine-vim/starship" ]; then
    cp mine-vim/starship/starship.toml ~/.config/starship.toml
    echo "starship.toml has been copied to ~/.config/starship.toml."
else
    echo "'starship' directory does not exist in the cloned repository."
    exit 1
fi

# Check if the directory ~/.config/ghostty exists, if not create it
if [ ! -d ~/.config/ghostty ]; then
    echo "~/.config/ghostty directory does not exist. Creating it..."
    mkdir -p ~/.config/ghostty
    echo "~/.config/ghostty directory created."
fi

# Check if ~/.config/ghostty/config exists, and if it does, rename it to ~/.config/ghostty/config.bak
if [ -f ~/.config/ghostty/config ]; then
    echo "Backing up existing config to config.bak..."
    mv ~/.config/ghostty/config ~/.config/ghostty/config.bak
    echo "Existing config has been backed up to config.bak."
fi

# Copy the ghostty config file from the cloned repository
echo "Copying ghostty config to ~/.config/ghostty/config..."

# Check if the config file exists in the cloned repo
if [ -f "mine-vim/ghostty/ghostty/config" ]; then
    cp mine-vim/ghostty/ghostty/config ~/.config/ghostty/config
    echo "ghostty config has been copied to ~/.config/ghostty/config."
else
    echo "'ghostty/config' file does not exist in the cloned repository."
    exit 1
fi

echo "Backing up existing Neovim configuration..."

# Required backup
if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim.bak
    echo "~/.config/nvim backed up to ~/.config/nvim.bak"
fi

# Optional but recommended
if [ -d ~/.local/share/nvim ]; then
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    echo "~/.local/share/nvim backed up to ~/.local/share/nvim.bak"
fi

if [ -d ~/.local/state/nvim ]; then
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    echo "~/.local/state/nvim backed up to ~/.local/state/nvim.bak"
fi

if [ -d ~/.cache/nvim ]; then
    mv ~/.cache/nvim ~/.cache/nvim.bak
    echo "~/.cache/nvim backed up to ~/.cache/nvim.bak"
fi

# Copy new Neovim config
echo "Copying new Neovim config from mine-vim/config/nvim-new-version to ~/.config/nvim..."

if [ -d "mine-vim/config/nvim-new-version" ]; then
    cp -r mine-vim/config/nvim-new-version ~/.config/nvim
    echo "New Neovim config has been copied."
else
    echo "Directory mine-vim/config/nvim-new-version does not exist."
    exit 1
fi

echo "Already Done setup Loner DEV Tools. Don't forget to add this in ~/.zshrc"
echo '  # Add Starship'
echo '  eval "$(starship init zsh)"'
echo '  export STARSHIP_CONFIG=~/.config/starship.toml'
