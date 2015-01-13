
DESTDIR = /usr/local/bin

all:
	@echo "Nothing to build, see install rule"

install:
	install -m 755 b2b.sh $(DESTDIR)/b2b

