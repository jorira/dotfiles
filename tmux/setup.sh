#! /bin/sh

# vim 
echo "Setup tmux environment......."
mv ~/.tmux.conf ~/.tmux.conf.save
ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
echo "Done setup."

