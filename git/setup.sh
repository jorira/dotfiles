#! /bin/sh

CONFIG_PATH=~/.gitconfig
IGNORE_PATH=~/.gitignore
# Git dotfile Setup
echo "Setup git environment......."

set -ex

# Make backup
if [ -e $CONFIG_PATH ]; then
  mv $CONFIG_PATH $CONFIG_PATH.save
fi
if [ -e $IGNORE_PATH ]; then
  mv $IGNORE_PATH $IGNORE_PATH.save
fi

ln -s `pwd`/gitconfig $CONFIG_PATH
ln -s `pwd`/gitignore $IGNORE_PATH

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc

echo "Done. Setup git environment."

