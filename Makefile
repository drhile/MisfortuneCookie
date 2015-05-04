TGT = misfortune
CC = gcc
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
CFLAGS = -g -Wall

# these defines are for linux
LIBS =
ARCH = LINUX

$(TGT): Makefile $(TGT).c
        $(CC) $(CFLAGS) -D$(ARCH) -DPREFIX=\"$(PREFIX)\" -o $(TGT) $(TGT).c

install: $(TGT)
        if [ ! -d $(bindir) ]; then mkdir -p $(BINDIR) ;fi
        cp $(TGT) $(BINDIR)/$(TGT)
