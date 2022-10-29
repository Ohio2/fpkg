#!/bin/bash
case $1 in
	-h) echo "sets up a testing work env, use -t to test fpkg" ;;
	-c) t="$PWD/testing" rm -rf $t ;;
	-t) t="$PWD/testing"
	if [[ -d $t ]]; then
		set -x
		export OLDPATH=$PATH FPKG_ROOT=$t PREFIX=$t ask="no" REPO="https://github.com/Ohio2/frepo.git" _GIT_or_HTTPS="git" PKGDEST="$FPKGROOT/var/pkg" PATH=$PATH:$t
		mkdir -p $t/dep/tst
		touch $t/dep/tst/hi
		echo "helo" > $t/dep/tst/hi
		$t/usr/bin/cpkg -F $t/dep/tst
		$t/usr/bin/fpkg i tst
		set +x
		if [[ ! -f $t/tst/hi ]]; then
			echo "except: 02"
			exit 02
		fi
		if [[ ! $(echo "$(>$t/tst/hi)") == helo ]]; then
			echo "except: 03"
			exit 03
		fi
		export PATH=$OLDPATH		
	else
		echo "except: 01"
		exit 01
	fi
	;;
	*) set -x 
	t="$PWD/testing"
	mkdir -p $t 
	mkdir -p $t/usr/bin
	mkdir -p $t/var/pkg
	mkdir -p $t/var/fpkg/git
	mkdir -p $t/var/fpkg/cache
	DESTDIR=$t make install
	export FPKGROOT=$t PREFIX=$PREFIX:$t 
	set +x ;;
esac
