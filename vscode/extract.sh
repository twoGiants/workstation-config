echo "copy vscode settings, keymaps and enabled extensions to: $(pwd)"
cp -v ~/Library/Application\ Support/Code/User/settings.json .
cp -v ~/Library/Application\ Support/Code/User/keybindings.json .
code --list-extensions --show-versions > extensions.txt