#!/usr/bin/env bash
#
# shinzui/vim ellipsis package

pkg.install() {
  install_vim_plug

  readonly files=(vimrc vimrc.bundle)

  for file in "${files[@]}"; do
    fs.link_file "$file"
  done

  vim +PlugInstall
}

install_vim_plug() {
  readonly vim_plug="$HOME/.vim/autoload/plug.vim"
  readonly neovim_plug="$HOME/.config/neovim/autoload/plug.vim"


  # Install vim-plug for vim
  if ! fs.file_exits "$vim_plug"; then
    curl -fLo "$vim_plug" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi

  # Install vim-plug for neovim
  if ! fs.file_exits "$neovim_plug"; then
    curl -fLo "$neovim_plug" --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
}

pkg.push() {
  vim +PlugSnapshot! "$PKG_PATH/vim_bundle.snapshot"

  git.push
}

pkg.pull() {
  git.pull

  vim +PlugUpgrade
  vim +PlugUpdate
  vim +PlugClean!
}

pkg.installed() {
  git.diffstat

  #vim +PlugStatus
}


pkg.status() {
  git.diffstat

  #vim +PlugStatus
}
