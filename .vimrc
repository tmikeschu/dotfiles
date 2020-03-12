if exists('g:vscode')
    " VSCode extension
  source $HOME/dotfiles/neovim/vscode.vimrc
else
  source $HOME/dotfiles/neovim/bundles.vimrc
  source $HOME/dotfiles/neovim/commands.vimrc
  source $HOME/dotfiles/neovim/gvars.vimrc
  source $HOME/dotfiles/neovim/macros.vimrc
  source $HOME/dotfiles/neovim/settings.vimrc
  source $HOME/dotfiles/neovim/lightline.vimrc
  source $HOME/dotfiles/neovim/coc.vimrc

  " allow project specific .vimrc
  set exrc
  set secure
endif
