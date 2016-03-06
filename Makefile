PREFIX=/usr/
DESTDIR=

THEME_FILES=\
	index.html \
	index.theme \
	petrichor.js \
	petrichor.css \
	bg.jpg \
	iec5009.svg \
	drop-down.svg

all:


install:
	for f in $(THEME_FILES) ; do \
		install -Dm 644 "$$f" -t "$(DESTDIR)/$(PREFIX)/share/lightdm-webkit/themes/petrichor/" ; \
	done
	install -Dm 644 LICENSE "$(DESTDIR)/$(PREFIX)/share/licenses/petrichor/LICENSE"

