# .dotfiles

![person made of dots throwing dots to dots](https://media.giphy.com/media/3o72F38VEEi1ODPOXm/giphy.gif)

A relatively lean setup for `bash`, `neovim`, and other tooling configurations.

Clone this repo to your root directory (`~`). To use any dotfile here, use
symbolic links:

```shell
ln -s ~/dotfiles/.<dotfile> ~/.<dotfile>

# Example

ln -s ~/dotfiles/.vimrc ~/.vimrc
```

## Symbolic Links

|symbol|source|
|---|---|
|`~/.bash_profile`|`~/dotfiles/.bash_profile`|
|`~/.bashrc`|`~/dotfiles/.bash_profile`|
|`~/.config/nvim`|`~/.vim`|
|`~/.git-completion.bash`|`~/dotfiles/.git-completion.bash`|
|`~/.gvimrc`|`~/dotfiles/.vimrc`|
|`~/.inputrc`|`~/dotfiles/.inputrc `|
|`~/.set-defaults`|`~/dotfiles/.set-defaults`|
|`~/.vim/ftplugin`|`~/dotfiles/neovim/ftplugin`|
|`~/.vim/init.vim`|`~/dotfiles/.vimrc`|
|`~/.vimrc`|`~/dotfiles/.vimrc`|

If you have ruby installed, you can run the `make_sym_links.rb` executable.
From the command line:

```
chmod u+x make_sym_links.rb
./make_sym_links.rb
```
