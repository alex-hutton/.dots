PERSONA ?= self

install:
	cat bashrc >> ~/.bashrc
	git submodule update --init --recursive
	cd vim-config && make
	cd git-config && PERSONA=${PERSONA} make
