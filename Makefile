EMAIL ?= mail@alexhutton.xyz

install:
	cat bashrc >> ~/.bashrc
	git submodule update --init --recursive
	cd vim-config && make
	cd git-config && EMAIL=${EMAIL} make
	ln --symbolic --force .dots/Xresources ~/.Xresources
