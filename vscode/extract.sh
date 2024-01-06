echo "copy vscode settings, keymaps extensions to: $(pwd)"
cp -v ~/Library/Application\ Support/Code/User/settings.json .
cp -v ~/Library/Application\ Support/Code/User/keybindings.json .
code --list-extensions --show-versions > extensions.txt