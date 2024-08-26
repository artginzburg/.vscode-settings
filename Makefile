ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
USER_DIR:=~/Library/Application\ Support/Code/User

backup:
	mv $(USER_DIR)/settings.json ./ ; \
	mv $(USER_DIR)/keybindings.json ./ ; \
	make install ; \
	make backup-extensions

install:
	ln -s $(ROOT_DIR)/settings.json $(USER_DIR)/settings.json
	ln -s $(ROOT_DIR)/keybindings.json $(USER_DIR)/keybindings.json

backup-extensions:
	code --list-extensions > extensions.txt

revert:
# removes the links created by "install" and copies actual files to the */Code/User/ directory. Used to disable VSCode settings sync with Git.
	rm $(USER_DIR)/settings.json
	cp $(ROOT_DIR)/settings.json $(USER_DIR)/settings.json
	rm $(USER_DIR)/keybindings.json
	cp $(ROOT_DIR)/keybindings.json $(USER_DIR)/keybindings.json
