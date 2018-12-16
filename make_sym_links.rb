#!/usr/bin/env ruby

require "fileutils"

begin
  FileUtil.mkdir("~/.config")
rescue
  puts "~/.config already exists 😬\n\n"
end

links = {
  "~/.bash_profile" => "~/dotfiles/.bash_profile",
  "~/.bashrc" => "~/dotfiles/.bash_profile",
  "~/.config/nvim" => "~/.vim",
  "~/.git-completion.bash" => "~/dotfiles/.git-completion.bash",
  "~/.gvimrc" => "~/dotfiles/.vimrc",
  "~/.inputrc" => "~/dotfiles/.inputrc ",
  "~/.set-defaults" => "~/dotfiles/.set-defaults",
  "~/.vim/ftplugin" => "~/dotfiles/neovim/ftplugin",
  "~/.vim/init.vim" => "~/dotfiles/.vimrc",
  "~/.vimrc" => "~/dotfiles/.vimrc",
}

links.each do |new, old|
  FileUtil.symlink(old, new)
  puts "Symlink created for #{old} -> #{new} ✅"
rescue
  puts "File at #{new} already exists 😬\n\n"
end
