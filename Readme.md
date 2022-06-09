# fpkg

Faerbit's original purpose was:
„This is a linux package manager focused on simplicity, rather than feature
completeness. This is rather for my personal education, than for producing
something useful.”

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

**u**pdate **p**ac**k**a**g**e:
``` bash
upkg foo 
```

**s**ync **p**ac**k**a**g**e:
``` bash
spkg foo
```

**f**aerbit's **p**ac**k**a**g**e manager:
``` bash
fpkg c/q/l/i/r/u/s foo 
```

