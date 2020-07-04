
### Install

```fish
ln -sf (pwd)/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -sf (pwd)/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
```

### Extensions

needs `code` installed: https://code.visualstudio.com/docs/setup/mac

Export installed extensions:

```
code --list-extensions > extensions.txt
```

Import installed extensions:

```
cat extensions.txt | xargs -L 1 code --install-extension
```

Enable key repeat (for vim keymap)

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

### TIL

`cmd-0` - focus explorer

`shift 5` - create new file

`cmd .` - quick fix

