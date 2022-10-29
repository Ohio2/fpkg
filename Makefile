
DESTDIR ?=
PREFIX ?=/usr
exec_prefix ?= $(PREFIX)
bindir ?= $(exec_prefix)/bin
BINDIR ?= $(bindir) 

all: help
help:
	@echo No build necessary. Use \"make install\" to install fpkg
	@echo or use \"make criticalupdated_install\" to install the fpkg openrc criticalupdate daemon for day-zero patches.

install:
	mkdir -p $(DESTDIR)$(BINDIR)
	mkdir -p $(DESTDIR)/var/fpkg
	install -m 755 conf/conf $(DESTDIR)/var/fpkg/conf
	install -m 755 src/cpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/qpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/lpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/ipkg $(DESTDIR)$(BINDIR)
	install -m 755 src/rpkg $(DESTDIR)$(BINDIR)
	install -m 755 src/spkg $(DESTDIR)$(BINDIR)
	install -m 755 src/upkg $(DESTDIR)$(BINDIR)
	install -m 755 src/fpkg $(DESTDIR)$(BINDIR)
criticalupdated_install:
	install -m 755  fpkg_criticalupdated/criticalupdated
