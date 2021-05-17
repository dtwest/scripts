#!/bin/bash

. ./functions/homebrew.sh
. ./functions/config.sh
. ./functions/zsh.sh
. ./functions/code.sh

function backup_mac {
    backup_code_settings
    backup_homebrew
    backup_config
    git diff 
    echo "Happy to push backup? (y/N)"
    read ans
    if [[ $ans =~ "y" ]]; then 
        git add -A && git commit -m "Backup Config" && git push
    fi
}