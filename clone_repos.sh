#!/bin/bash

# Function to clone repository
clone_repo() {
    local repo_url="$1"
    local clone_dir="$2"

    if [ ! -d "$clone_dir/.git" ]; then
        echo "Cloning repository from $repo_url to $clone_dir..."
        git clone "$repo_url" "$clone_dir"
        if [ $? -eq 0 ]; then
            echo "Repository cloned successfully into $clone_dir"
            ls -R "$clone_dir"  # List cloned files
        else
            echo "Failed to clone repository from $repo_url."
            exit 1
        fi
    else
        echo "Repository is already cloned in $clone_dir"
    fi
}

# Directory where you want to clone the repositories
BACKEND_CLONE_DIR="./TaskManagementBE"
FRONTEND_CLONE_DIR="./TaskManagementFE"
USER="mgaldon17"

# Clone backend repository
clone_repo "https://github.com/${USER}/TaskManagementBE.git" "$BACKEND_CLONE_DIR"

# Clone frontend repository
clone_repo "https://github.com/${USER}/TaskManagementFE.git" "$FRONTEND_CLONE_DIR"