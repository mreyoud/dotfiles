#!/bin/sh

case "$-" in *i*) ;; *) return;; esac

unset LC_ALL LANGUAGE LC_CTYPE MAILCHECK

export {NOSPLASH,NOWELCOME}=1
export {EDITOR,VISUAL}=vi
export {PAGER,MANPAGER}=less

export LANG=$(locale -a | grep -Ei "en.us.utf")
export TERMINAL=st
export READER=zathura
export FILE=ranger
export BROWSER="w3m '%s' &"

LOCAL_PREFIX="$HOME/.local"

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${LOCAL_PREFIX}/share"
export XDG_BIN_HOME="${LOCAL_PREFIX}/bin"
export XDG_LIB_HOME="${LOCAL_PREFIX}/lib"

# xdg spec forgot some stuff...
export XDG_MAN_HOME="${LOCAL_PREFIX}/man"
export XDG_INCLUDE_HOME="${LOCAL_PREFIX}/include"

export GOPATH=$HOME/workspace
export PATH=$XDG_BIN_HOME:$GOPATH/bin:$PATH
export MANPATH=$XDG_MAN_HOME:${MANPATH}
export LD_LIBRARY_PATH=$XDG_LIB_HOME:$LD_LIBRARY_PATH
export LIBRARY_PATH=$XDG_LIB_HOME:$LIBRARY_PATH
export C_INCLUDE_PATH=$XDG_INCLUDE_HOME:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$XDG_INCLUDE_HOME:$CPLUS_INCLUDE_PATH
export CFLAGS="-I$XDG_INCLUDE_HOME $CFLAGS"
export CXXFLAGS="-I$XDG_INCLUDE_HOME $CXXFLAGS"
export LDFLAGS="-L$XDG_LIB_HOME -Wl,-rpath,$XDG_LIB_HOME $LDFLAGS"
export LD_RUNPATH="$XDG_LIB_HOME:$LD_RUNPATH"
export PKG_CONFIG_PATH="$XDG_LIB_HOME/pkgconfig:$PKG_CONFIG_PATH"
export ACLOCAL_FLAGS="-I $XDG_DATA_HOME/aclocal/"

unset LOCAL_PREFIX

# enforce the xdg thing
export GTK2_RC_FILES=${XDG_CONFIG_HOME}/gtk-2.0/gtkrc
export MPLAYER_HOME=${XDG_CONFIG_HOME}/mplayer
export LESSHISTFILE=${XDG_CONFIG_HOME}/less/history
export LESSKEY=${XDG_CONFIG_HOME}/less/keys
export HISTFILE=${XDG_CACHE_HOME}/bash/history
export INPUTRC=${XDG_CONFIG_HOME}/readline
export SCREENRC=${XDG_CONFIG_HOME}/screen
export MPLAYER_HOME=${XDG_CONFIG_HOME}/mplayer
export ICEAUTHORITY=${XDG_CACHE_HOME}/ICEauthority
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# highlighting inside manpages and elsewhere
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

