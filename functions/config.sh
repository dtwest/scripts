#!/bin/bash

function backup_config {
    cp ~/.vimrc ./config
    cp ~/.hyper.js ./config
    cp ~/.zshrc ./config
    cp ~/.zprofile ./config
}

function restore_config {
    cp ./config/.vimrc ~/
    cp ./config/.hyper.js ~/
    cp ./config/.zshrc ~/
    cp ./config/.zprofile ~/
}

