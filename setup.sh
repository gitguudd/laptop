#! /usr/bin/env bash

# Install xcode-select
xcode-select --install

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Get dotfiles
git clone https://github.com/gitguudd/dotfiles.git

# Install zsh
brew install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/themes/
curl -o https://raw.githubusercontent.com/halfo/lambda-mod-zsh-theme/master/lambda-mod.zsh-theme

cd ~

brew install asdf \
  coreutils automake autoconf openssl gpg fzf \
  libyaml readline libxslt libtool unixodbc \
  unzip curl tmux postgresql@9.6 nginx nvim

# link dotfiles
cd ~/dotfiles
bash setup.sh

source ~/.zshrc


# Install ruby, nodejs and python
asdf plugin-add ruby && asdf plugin-add nodejs && asdf plugin-add python
asdf install ruby 2.6.5 
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install node 10.16.3
asdf install python 3.8.0
asdf global ruby 2.6.5
asdf global node 10.16.3
asdf global python 3.8.0

source ~/.zshrc

# Install powerline
pip install --user powerline-status

source ~/.zshrc
