backup:
	mv ~/Library/Application\ Support/Code/User/settings.json ./ ; \
	mv ~/Library/Application\ Support/Code/User/keybindings.json ./ ; \
	make install ; \
	make backup-extensions

install:
	ln -s ~/Documents/GitHub/vscode-settings/settings.json ~/Library/Application\ Support/Code/User/settings.json
	ln -s ~/Documents/GitHub/vscode-settings/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

backup-extensions:
	code --list-extensions > extensions.txt

revert:
# removes the links created by "install" and copies actual files to the */Code/User/ directory. Used to disable VSCode settings sync with Git.
	rm ~/Library/Application\ Support/Code/User/settings.json
	cp ~/Documents/GitHub/vscode-settings/settings.json ~/Library/Application\ Support/Code/User/settings.json
	rm ~/Library/Application\ Support/Code/User/keybindings.json
	cp ~/Documents/GitHub/vscode-settings/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
