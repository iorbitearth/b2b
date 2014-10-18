
INSTALLDIR = /usr/local/bin

all:
	@echo "Nothing to build, see install rule"

install:
	cp scripts/* $(INSTALLDIR)

