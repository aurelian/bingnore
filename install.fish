#/usr/bin/env fish

brew install fzf
brew install ack

ln -s (pwd)/fish/config.fish ~/.config/fish/config.fish
ln -s (pwd)/dotfiles/gemrc ~/.gemrc
ln -s (pwd)/dotfiles/gitconfig ~/.gitconfig
ln -s (pwd)/fish/functions ~/.config/fish/functions

