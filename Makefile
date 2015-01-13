
DESTDIR = /usr/local/bin

all:
	@echo "Nothing to build, see install rule"

install:
	cp b2b.sh $(DESTDIR)/b2b

