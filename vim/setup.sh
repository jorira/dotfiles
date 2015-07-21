#! /bin/sh

# Vim NeoBundle Setup
echo "Setup vim environment......."
git clone https://github.com/Shougo/neobundle.vim.git vim.d/bundle/neobundle.vim

# Make backup
mv ~/.vimrc ~/.vimrc.save

ln -s `pwd`/vimrc ~/.vimrc

# Make backup
mv ~/.vim  ~/.vim.save

ln -s `pwd`/vim.d ~/.vim

echo "Done. Please exec Vim command ':NeoBundleInstall' "

