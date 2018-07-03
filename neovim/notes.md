## Set Up Neovim On New Machine

* Install [neovim via
  homebrew](https://github.com/neovim/homebrew-neovim#troubleshooting)
* Install [neobundle](https://github.com/Shougo/neobundle.vim)
* Set these symbolic links:

```shell
rm -rf ~/.config/nvim
ln -s ~/.vim ~/.config/nvim
ln -s ~/dotfiles/.vimrc ~/.vim/init.vim
```
* Open `vim` and run `NeoBundleInstall`
* Open `nvim`
