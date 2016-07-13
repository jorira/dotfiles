#! /bin/bash

set -ex

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
# PATH に追加
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# .bash_profile に追加
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
# 上記設定の再読み込み
#exec $SHELL -l
source ~/.bash_profile

rbenv --version

# RubyBuild
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install --list

# Gemset
git clone https://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset
