#!/bin/bash

function install_homebrew {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function restore_homebrew {
    cd ./config
    brew bundle
    cd -
}

function backup_homebrew {
    brew bundle dump && \
    mv Brewfile ./config
}