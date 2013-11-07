.PHONY: all
all: build.lst

build.lst: build.sh
	mkdir -p styles
	sh build.sh > build.lst

COPYING.html: COPYING.md
	maruku COPYING.md 2>/dev/null

README.html: README.md
	maruku README.md 2>/dev/null

.PHONY: doc
doc: COPYING.html README.html

.PHONY: install
install: build.lst
	mkdir -p -m 0755 $(HOME)/.fvwm
	mkdir -p -m 0755 $(HOME)/.fvwm/styles
	install -m 0644 config $(HOME)/.fvwm
	install -m 0644 styles/* $(HOME)/.fvwm/styles
	cd $(HOME)/.fvwm && ln -sf styles/min mystyle

.PHONY: clean
clean:
	rm -f COPYING.html
	rm -f README.html
	rm -f build.lst
	rm -f styles/*
