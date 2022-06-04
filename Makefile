
DESTDIR ?=
PREFIX ?=/usr
exec_prefix ?= $(PREFIX)
bindir ?= $(exec_prefix)/bin
BINDIR ?= $(bindir)


all: help
help:
	@echo No build necessary. Use \"make install\" to install fpkg

install:
	install -d -m 755 $(DESTDIR)$(BINDIR)
	install -m 755 src/cpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/qpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/lpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/ipkg $(DESTDIR)$(BINDIR)
	install -m 755 src/rpkg $(DESTDIR)$(BINDIR)
