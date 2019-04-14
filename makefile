PWD := ${shell pwd}

# sync these with those in bash profile
XDG_CONFIG_HOME ?= "${HOME}/.config"
XDG_CACHE_HOME ?= "${HOME}/.cache"

all: dirs syms perms

dirs:
	@mkdir -p ${XDG_CONFIG_HOME}
	@mkdir -p ${XDG_CONFIG_HOME}/vim
	@mkdir -p ${XDG_CONFIG_HOME}/gtk-2.0
	@mkdir -p ${XDG_CONFIG_HOME}/gtk-3.0
	@mkdir -p ${XDG_CONFIG_HOME}/mplayer
	@mkdir -p ${XDG_CONFIG_HOME}/xbindkeys
	@mkdir -p ${XDG_CACHE_HOME}
	@mkdir -p ${XDG_CACHE_HOME}/vim/
	@mkdir -p ${XDG_CACHE_HOME}/vim/undo
	@mkdir -p ${XDG_CACHE_HOME}/vim/swap
	@mkdir -p ${XDG_CACHE_HOME}/vim/backup

syms: dirs
	@ln -fs ${PWD}/bashrc       ${HOME}/.bashrc
	@ln -fs ${PWD}/profile      ${HOME}/.profile
	@ln -fs ${PWD}/xinitrc      ${HOME}/.xinitrc
	@ln -fs ${PWD}/quiltrc      ${HOME}/.quiltrc
	@ln -fs ${PWD}/rtorrentrc   ${HOME}/.rtorrent.rc
	@ln -fs ${PWD}/xbindkeysrc  ${XDG_CONFIG_HOME}/xbindkeys/config
	@ln -fs ${PWD}/vimrc        ${XDG_CONFIG_HOME}/vim/vimrc
	@ln -fs ${PWD}/mplayerrc    ${XDG_CONFIG_HOME}/mplayer/config
	@ln -fs ${PWD}/gtk2rc       ${XDG_CONFIG_HOME}/gtk-2.0/gtkrc
	@ln -fs ${PWD}/gtk3rc       ${XDG_CONFIG_HOME}/gtk-3.0/settings.ini

perms: syms
	@chmod +x ${HOME}/.profile
	@chmod +x ${HOME}/.bashrc
	@chmod +x ${HOME}/.xinitrc

.PHONY: dirs syms perms

