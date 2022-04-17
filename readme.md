# My VSCode Settings

built-in Settings Sync is good enough, but version control is a game changer, and public sharing is just convenient

## Install

> Symlinks VSCode configuration files from this repo to the default VSCode user configuration directory

```ps1
make install
```

## Backup

> Moves VSCode configuration files to this repo, then performs `make install` and `make backup-extensions`

```ps1
make [backup]
```

### Backup extensions

> Saves output of `code --list-extensions` to extensions.txt

```ps1
make backup-extensions
```
