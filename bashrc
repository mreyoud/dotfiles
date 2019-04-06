#!/bin/bash

[[ $- = *i* ]] || return

setterm -blank 0 -powerdown 0 --bfreq 0 &> /dev/null
stty -ixon

shopt -u mailwarn
shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias	ls='ls -h --color=auto' \
	grep='grep -I --color=auto' \
	fgrep='fgrep -I --color=auto' \
	egrep='egrep -I --color=auto' \
	dir='dir --color=auto' \
	vdir='vdir --color=auto' \
	diff='colordiff -u' \
	gdb='gdb -q' \
	nano='nano -c' \
	wget='wget -c' \
	more='less' \
	tree='tree -F --dirsfirst' \
	df='df -h' \
	free='free -h' \
	du='du -h' \
	calc='calc -d' \
	mkdirp='mkdir -p' \
	dsz='du -hs --apparent-size' \
	ffmpeg='ffmpeg -hide_banner'

function spell() { echo $@ | hunspell -d en_US | grep '^&'; }
function arspell() { echo $@ | hunspell -d ar_SY | grep '^&'; }

function ucase() { echo $@ | tr [:lower:] [:upper:]; }
function lcase() { echo $@ | tr [:upper:] [:lower:]; }

function dequote() { echo $@ | sed "s/[‘’]/'/g; s/[“”¿¿]/\"/g"; }
