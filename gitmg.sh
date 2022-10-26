#!/bin/bash
if [ $# == 0 ]; then
	echo -e "git manager util for fpkg,\nv.0\n\nonly use if git fails to merge commits"
fi
while [ ! -z "$1" ]; do
	case $1 in
		"-fixmerge") mkdir -p tmp/; cp $1 tmp/; git pull; diff $1 tmp/$1 > tmp/$1.gitpatch; patch -p1 < tmp/$1.gitpatch; rm -rf tmp/; git add $1; git commit -m "$(echo -e ${COMMIT_MSG})" ;;
	esac
shift;
done
