# fpkg

This is a linux package manager focussed on simplicity, rather than feature
completeness. This is rather for my personal education, than for producing
something useful.

Fork of: https://codeberg.org/faerbit/fpkg/src/branch/master

## Dependencies
 * fakeroot
 * bash
 * zstd
 * tar
 * coreutils
 * findutils

## Installation
``` bash
make install DESTDIR=/desired/path
```

## Usage
### Prerequesite
``` bash
mkdir /pkg # folder for storing packages
```

**c**reate **p**ac**k**a**g**e:
```bash
cd build_dir/of/foo
cpkg make install # DESTDIR is set by cpkg
```

**q**uery **p**ac**k**a**g**e version:
``` bash
qpkg foo
```

**l**ist **p**ac**k**a**g**e contents:
``` bash
lpkg foo
```

**i**nstall **p**ac**k**a**g**e:
``` bash
ipkg foo
```

**r**emove **p**ac**k**a**g**e:
``` bash
rpkg foo
```
