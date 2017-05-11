PREFIX=/usr/
DESTDIR=
VERSION=2.0

THEME_FILES=\
	index.html \
	index.theme \
	petrichor.js \
	petrichor.css

.PHONY: all install

all: $(THEME_FILES)

install: all
	for f in $(THEME_FILES) ; do \
		install -Dm 644 "$$f" -t "$(DESTDIR)/$(PREFIX)/share/lightdm-webkit/themes/petrichor/" ; \
	done
	cp -r image "$(DESTDIR)/$(PREFIX)/share/lightdm-webkit/themes/petrichor/"
	install -Dm 644 LICENSE "$(DESTDIR)/$(PREFIX)/share/licenses/petrichor/LICENSE"

clean:
	rm index.theme

index.theme: index.theme.in
	sed -e 's/{VERSION}/$(VERSION)/g' $^ > $@
