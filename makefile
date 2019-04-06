PWD := ${shell pwd}

all: syms perms

syms:
	ln -fs ${PWD}/bashrc  ${HOME}/.bashrc
	ln -fs ${PWD}/profile ${HOME}/.profile
	ln -fs ${PWD}/xinitrc ${HOME}/.xinitrc
	ln -fs ${PWD}/vimrc   ${HOME}/.vimrc

perms: syms
	chmod +x ${HOME}/.profile
	chmod +x ${HOME}/.bashrc
	chmod +x ${HOME}/.xinitrc

.PHONY: all syms perms

