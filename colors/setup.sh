#! /bin/sh

# vim 
echo "Setup colors environment......."
mv ~/.dir_colors ~/.dir_colors.save
ln -s `pwd`/dir_colors ~/.dir_colors
echo "export PATH=\"\$(brew --prefix coreutils)/libexec/gnubin:\$PATH\"" >> ~/.bashrc  
echo "eval \`dircolors ~/.dir_colors -b\`" >> ~/.bashrc 
source ~/.bashrc
echo "Done setup."

