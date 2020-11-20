#/usr/bin/env fish

brew install fzf
brew install ack

ln -sf (pwd)/fish/config.fish ~/.config/fish/config.fish
ln -sf (pwd)/dotfiles/gemrc ~/.gemrc
ln -sf (pwd)/dotfiles/gitconfig ~/.gitconfig
ln -sf (pwd)/fish/functions ~/.config/fish/functions
ln -sf (pwd)/dotfiles/tmux.conf ~/.tmux.conf
ln -sf (pwd)/dotfiles/ackrc ~/.ackrc
ln -sf (pwd)/karabiner ~/.config/karabiner
