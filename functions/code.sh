#!/bin/bash

function backup_code_settings {
    code --list-extensions > ./config/code/extensions
    cp ~/Library/Application\ Support/Code/User/settings.json ./config/code
}

function restore_code_extensions {
    for extension in $(cat ./config/code/extensions); do
        code --install-extension $extension --force
    done
}

function restore_code_settings {
    cp ./config/code/settings.json ~/Library/Application\ Support/Code/User/settings.json
}


function restore_code {
    restore_code_config
    restore_code_settings
}