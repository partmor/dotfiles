# dotfiles
My personal dotfiles

To have synced dotfiles, clone this repo in your homedir (`~/`) and run the `link-dotfiles.sh` script passing the list of desired dotfiles to sync, e.g.:

```
# clone
git clone https://github.com/partmor/dotfiles.git ~/dotfiles

# create symbolic links
bash ~/dotfiles/link-dotfiles.sh .vimrc .tmux.conf
```

## Prerequisites & Comments

### Vim 

For Vim to correctly use the the configuration in `.vimrc`, you need to install [Vundle](https://github.com/VundleVim/Vundle.vim) and the pluggins in the `.vimrc`:

```
# clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins (without "opening" vim)
vim +PluginInstall +qall > /dev/null
```
### Tmux

No additional steps are required to effectively load `.tmux.conf`.
