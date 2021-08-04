# dotfiles
My personal dotfiles

To have synced dotfiles, clone this repo in your homedir (`~/`) and run the `link-dotfiles.sh` script passing the list of desired dotfiles to sync, e.g.:

```
# clone
$ git clone https://github.com/partmor/dotfiles.git ~/dotfiles

# create symbolic links in your home directory
$ bash ~/dotfiles/link-dotfiles.sh .vimrc .tmux.conf .custom_bashrc
```

## Prerequisites & Comments

### Vim ([`.vimrc`](.vimrc))

For Vim to correctly use the the configuration in `.vimrc`, you need to install [Vundle](https://github.com/VundleVim/Vundle.vim) and the pluggins specified in the `.vimrc`.

As a prerequisite I recommend installing Powerline fonts:
```
# in linux:
$ sudo apt-get install fonts-powerline

# in macOS:
$ brew install python
$ brew install macvim
# then follow the generic (clone and install.sh) steps from https://github.com/powerline/fonts#quick-installation
# finally: iTerm > Preferences > Profiles > Text and select ubuntu mono for instance
```

Now install Vundle and plugins:

```
# clone Vundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins (without opening vim editor) - AFTER creating the .vimrc link at ~/
$ vim +PluginInstall +qall > /dev/null
```
### Tmux ([`.tmux.conf`](.tmux.conf))

No additional steps are required to effectively load `.tmux.conf`.

### Bash aliases ([`.custom_bashrc`](.custom_bashrc))

After creating the simbolic link for `.custom_bashrc`, source it in your `rc` file.

```
# if you use bash:
$ echo "source ~/.custom_bashrc" >> ~/.bashrc

# if you use zsh:
$ echo "source ~/.custom_bashrc" >> ~/.zshrc 
```

## Other settings

### Git

+ Prevent `git` from using `less` if content is less than one screen:
  ```
  $ git config --global --replace-all core.pager "less -F -X"
  ```
+ Set `vim` as default editor (for rebasing, commit messages, etc.):
  ```
  $ git config --global core.editor "vim"
  ```

### [lazygit](https://github.com/jesseduffield/lazygit)

Great terminal UI for git commands.

+ [Installation instructions](https://github.com/jesseduffield/lazygit#installation)
+ Alias to `lg` for easy usage.
+ Keybindings [reference](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md).

### [lazydocker](https://github.com/jesseduffield/lazydocker)

Great terminal UI for Docker management. By the same guy that created `lazygit`.

+ [Installation instructions](https://github.com/jesseduffield/lazydocker#installation)
+ Alias to `lzd` for easy usage.

### OhMyZsh

+ My favourite theme: `ZSH_THEME="gentoo"`
+ To have `gcloud` SDK autocomplete, add `gcloud` to plugins: `plugins=(git gcloud)`

### iTerm2

+ For Ubuntu-like terminal color scheme, I use `gentoo` OhMyZsh theme with iTerm background hex `421a47`.

### GNU utilities (for Mac)

```
$ brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep
```

The GNU commands will be prepended with a `g`. E.g. if you want to use GNU's `xargs` instead of Mac's, use `gxargs`.
For more info, see this [SO question](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities).

## Useful resources

+ [tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
