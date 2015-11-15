INSTALL = install

PROGRAM = fvwm-min

.PHONY: all clean dist install uninstall

all: build.lst

build.lst: build
	sh build | tee build.lst

dist:
	rm -rf dist
	mkdir -p -m 0755 dist/$(PROGRAM)
	mkdir -p -m 0755 dist/$(PROGRAM)/styles
	mkdir -p -m 0755 dist/$(PROGRAM)/styles/base
	ln build dist/$(PROGRAM)
	ln config dist/$(PROGRAM)
	ln set-style dist/$(PROGRAM)
	ln Makefile dist/$(PROGRAM)
	ln LICENSE.md dist/$(PROGRAM)
	ln README.md dist/$(PROGRAM)
	cd dist && tar cf $(PROGRAM).tar $(PROGRAM)
	rm -rf dist/$(PROGRAM)
	gzip -9 dist/$(PROGRAM).tar

install: build.lst
	mkdir -p -m 0755 $(HOME)/.fvwm
	mkdir -p -m 0755 $(HOME)/.fvwm/styles/base
	mkdir -p -m 0755 $(HOME)/.fvwm/styles/user
	$(INSTALL) -m 0644 config $(HOME)/.fvwm
	$(INSTALL) -m 0755 set-style $(HOME)/.fvwm
	$(INSTALL) -m 0644 styles/base/* $(HOME)/.fvwm/styles/base
	cd $(HOME)/.fvwm && ln -sf styles/base/min mystyle

uninstall:
	rm -f $(HOME)/.fvwm/set-style
	rm -f $(HOME)/.fvwm/styles/base/*
	rmdir $(HOME)/.fvwm/styles/base || true
	rmdir $(HOME)/.fvwm/styles/user || true
	rmdir $(HOME)/.fvwm/styles || true
	cd $(HOME)/.fvwm && test -L mystyle && rm -f mystyle || true

clean:
	rm -rf -- dist
	rm -f -- build.lst
	rm -f -- styles/base/*
