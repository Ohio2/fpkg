#!/bin/bash
set +x
case $1 in
	-h) echo "sets up a testing work env" ;;
	-c) t="$PWD/testing" rm -rf $t ;;
	*) t="$PWD/testing"
	mkdir -p $t 
	mkdir -p $t/var/git/fpkg
	mkdir -p $t/usr/bin
	mkdir -p $t/var/pkg
	mkdir -p $t/var/fpkg/git
	mkdir -p $t/var/fpkg/cache
	DESTDIR=$t make install
	export FPKGROOT=$t ;;
esac
