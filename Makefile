all: sync

sync:
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.psqlrc ] || ln -s $(PWD)/psqlrc ~/.psqlrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.config/starship.toml ] || ln -s $(PWD)/config/starship.toml ~/.config/starship.toml

clean:
	rm -f ~/.zshrc
	rm -f ~/.psqlrc
	rm -f ~/.gitconfig
	rm -f ~/.config/starship.toml

backup:
	restic --verbose backup ~/Google\ Drive/pgbackup
	restic --verbose backup ~/Sync

.PHONY: all clean sync backup
