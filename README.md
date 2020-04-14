# dotfiles
My personal dotfiles

To have synced dotfiles, clone this repo in your homedir (`~/`) and run the `link-dotfiles.sh` script passing the list of desired dotfiles to sync, e.g.:

```
# clone
git clone https://github.com/partmor/dotfiles.git ~/dotfiles

# create symbolic links in your home directory
bash ~/dotfiles/link-dotfiles.sh .vimrc .tmux.conf .custom_bashrc
```

## Prerequisites & Comments

### Vim ([`.vimrc`](.vimrc))

For Vim to correctly use the the configuration in `.vimrc`, you need to install [Vundle](https://github.com/VundleVim/Vundle.vim) and the pluggins specified in the `.vimrc`:

```
# clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# get powerline fonts (recommended)
# in linux:
sudo apt-get install fonts-powerline
# in macOS follow the generic (clone and install.sh) steps from
# https://github.com/powerline/fonts#quick-installation, and then go to:
# iTerm > Preferences > Profiles > Text and select ubuntu mono for instance

# install plugins (without opening vim editor) - AFTER creating the .vimrc link at ~/
vim +PluginInstall +qall > /dev/null
```
### Tmux ([`.tmux.conf`](.tmux.conf))

No additional steps are required to effectively load `.tmux.conf`.

### Bash aliases ([`.custom_bashrc`](.custom_bashrc))

After creating the simbolic link for `.custom_bashrc`, source it in your `rc` file.

```
# if you use bash:
echo "source ~/.custom_bashrc" >> ~/.bashrc

# if you use zsh:
echo "source ~/.custom_bashrc" >> ~/.zshrc 
```

## Useful resources

+ [tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
