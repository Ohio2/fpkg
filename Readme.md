<img src="assets/logo.png" width="128"/>
# fpkg

Faerbit's original purpose was:
„This is a linux package manager focused on simplicity, rather than feature
completeness. This is rather for my personal education, than for producing
something useful.”
However, this project is starting to look like a serious package manager

Fork of: https://codeberg.org/faerbit/fpkg/src/branch/master

## Dependencies
 * fakeroot (only for cpkg)
 * bash
 * zstd
 * tar
 * coreutils
 * findutils

## Installation
``` bash
make install DESTDIR=/desired/path
```

### Prerequesite
``` bash
mkdir /pkg # folder for storing packages
```
## Repositories
* To make a Repository use cpkg
* use argument -F and create a directory
* don't use the fpkg c arg

**f**aerbit's **p**ac**k**a**g**e manager:
``` bash
fpkg c/q/l/i/r/u/s foo 
```
### Theorotical side of criticalupdated
Packages with the critical tag will be automatically updated, opt-in.
### Multiple repos
* Multiple repos are in progress,
* will be achieved by setting $REPO to $REPO[9]
* same goes for caches
### Smart caching
* Smart caching is also in progress.
* Achieved by setting date ahead (eg. 6m) so older cache files will be removed.
