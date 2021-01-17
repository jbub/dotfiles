all: sync

sync:
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.psqlrc ] || ln -s $(PWD)/psqlrc ~/.psqlrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

clean:
	rm -f ~/.zshrc
	rm -f ~/.psqlrc
	rm -f ~/.gitconfig

.PHONY: all clean sync
