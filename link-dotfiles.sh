#!/usr/bin/env bash

backup_and_link () {
        file=$1
        suffix=$2
        if [ ! -f ~/dotfiles/${file} ]
        then
                echo "Dotfile ${file} doesn't exist. Skipped."
                return 1
        fi
        if [ -f ~/${file} ]
        then
                backup="${file}_${suffix}"
                echo "${file} already exists."
                mv ~/${file} ~/${backup}
                echo "Backup created: ${backup}"
        fi
        echo "Creating symbolic link at ~/${file}"
        ln -s ~/dotfiles/$file ~/${file}
}
# you need to export -f the function to be able to use it in xargs;
# additionally it must be run with bash -c with the command in string.
export -f backup_and_link

# get list of inputs as array
FILES=("$@")
NOW=$(date '+%Y%m%d_%H%M%S')

printf '%s\n' "${FILES[@]}" | xargs -I % bash -c "backup_and_link % $NOW"
