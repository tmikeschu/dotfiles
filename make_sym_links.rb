#!/usr/bin/env ruby

require "fileutils"

begin
  FileUtils.mkdir("~/.config")
rescue
  puts "~/.config already exists 😬\n\n"
end

links = {
  "~/.bash_profile" => "~/dotfiles/.bash_profile",
  "~/.bashrc" => "~/dotfiles/.bash_profile",
  "~/.zshrc" => "~/dotfiles/.zshrc",
  "~/.tigrc" => "~/dotfiles/.tigrc",
  "~/.config/nvim" => "~/.vim",
  "~/.git-completion.bash" => "~/dotfiles/.git-completion.bash",
  "~/.gvimrc" => "~/dotfiles/.vimrc",
  "~/.inputrc" => "~/dotfiles/.inputrc ",
  "~/.vim" => "~/dotfiles/neovim/ftplugin",
  "~/.vim/init.vim" => "~/dotfiles/.vimrc",
  "~/.vimrc" => "~/dotfiles/.vimrc",
  "~/.hyper.js" => "~/dotfiles/.hyper.js",
  "~/.tmux.conf" => "~/dotfiles/.tmux.conf",
}

links.each do |new, old|
  FileUtils.ln_s(File.expand_path(old), File.expand_path(new))
  puts "Symlink created for #{old} -> #{new} ✅"
rescue => error
  puts "error 😬: #{error}"
end

FileUtils.rm(File.expand_path("~/.vim/.vim"), force: true)
