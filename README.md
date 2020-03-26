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

| symbol                   | source                            |
| ------------------------ | --------------------------------- |
| `~/.bash_profile`        | `~/dotfiles/.bash_profile`        |
| `~/.bashrc`              | `~/dotfiles/.bash_profile`        |
| `~/.zshrc`               | `~/dotfiles/.zshrc`               |
| `~/.config/nvim`         | `~/.vim`                          |
| `~/.git-completion.bash` | `~/dotfiles/.git-completion.bash` |
| `~/.gvimrc`              | `~/dotfiles/.vimrc`               |
| `~/.inputrc`             | `~/dotfiles/.inputrc`             |
| `~/.vim/ftplugin`        | `~/dotfiles/neovim/ftplugin`      |
| `~/.vim/init.vim`        | `~/dotfiles/.vimrc`               |
| `~/.vimrc`               | `~/dotfiles/.vimrc`               |

If you have ruby installed, you can run the `make_sym_links.rb` executable.
From the command line:

```
chmod u+x make_sym_links.rb
./make_sym_links.rb
```

## ENV Secrets

Sensitive env variables can be set in `.env.bash`

## tmux setup

```
tic -x ~/dotfiles/xterm-256color-italic.terminfo
tic -x ~/dotfiles/tmux-256color.terminfo
```

## Links that were really helpful at one point in a time of despair

- [tmux nvim true color](https://jdhao.github.io/2018/10/19/tmux_nvim_true_color/)
- [iterm tmux italics](https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be)
- [auto rename tmux window](https://that.guru/blog/automatically-set-tmux-window-name/)
- [.tigrc config](https://github.com/jonas/tig/blob/master/doc/tigrc.5.adoc#color-command)
