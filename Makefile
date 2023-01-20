DEPENDENCIES=python-requests python-dmenu python-filetype python-pyparsing python-arxiv2bib python-pyaml python-chardet python-beautifulsoup4 python-colorama python-bibtexparser python-click python-habanero python-isbnlib python-prompt_toolkit python-tqdm python-pygments python-stevedore python-doi python-typing_extensions python-lxml python-slugify
deps: 
	yay --noconfirm --needed -S --asdeps ${DEPENDENCIES}

clean:
	rm -rf *.zst *.zip *.gz src pkg

package: deps 
	makepkg -d
	yay --noconfirm -U  *.pkg.tar.zst

uninstall: 
	yay --noconfirm -Rs papis papis-dmenu papis-zotero

install: 
	echo "Installation complete."

uninstall-deps:
	yay --noconfirm -Rs ${DEPENDENCIES}

.PHONY: install deps clean package
.DEFAULT_GOAL := package
