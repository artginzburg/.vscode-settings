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