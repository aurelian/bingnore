
### Install

ln -sf `pwd`/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -sf `pwd`/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

### Extensions

needs `code` installed: https://code.visualstudio.com/docs/setup/mac

code --list-extensions > extensions.txt

cat extensions.txt | xargs -L 1 echo code --install-extension

### TIL

`cmd-0` - focus explorer

`shift 5` - create new file

`cmd .` - quick fix

