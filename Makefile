all: sync

sync:
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.zprofile ] || ln -s $(PWD)/zprofile ~/.zprofile
	[ -f ~/.psqlrc ] || ln -s $(PWD)/psqlrc ~/.psqlrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.config/starship.toml ] || ln -s $(PWD)/config/starship.toml ~/.config/starship.toml

clean:
	rm -f ~/.zshrc
	rm -f ~/.zprofile
	rm -f ~/.psqlrc
	rm -f ~/.gitconfig
	rm -f ~/.config/starship.toml

backup:
	restic --verbose backup ~/Sync
	restic --verbose backup ~/Documents/Scan
	restic --verbose backup /Volumes/ELEMENTS/Photos
	restic --verbose backup /Volumes/ELEMENTS/fotky
	restic --verbose backup /Volumes/ELEMENTS/Backup

.PHONY: all clean sync backup
