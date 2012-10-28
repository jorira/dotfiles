#! /bin/sh

# vim 
echo "Setup vim environment......."
git clone https://github.com/gmarik/vundle.git vim.d/bundle/vundle
mv ~/.vimrc ~/.vimrc.save
ln -s `pwd`/vimrc ~/.vimrc
mv ~/.vim  ~/.vim.save
ln -s `pwd`/vim.d ~/.vim
echo "Done. Please exec Vim command ':BundleInstall' "

