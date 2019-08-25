#!/usr/bin/env bash

dotfiles=$@
NOW=$(date '+%Y%m%d_%H%M%S')

echo $dotfiles | xargs -I % sh -c "mv ~/% ~/%_$NOW; ln -s ~/dotfiles/% ~/%" 

