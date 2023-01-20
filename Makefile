DEPENDENCIES=python-requests python-filetype python-pyparsing python-arxiv2bib python-pyaml python-chardet python-beautifulsoup4 python-colorama python-bibtexparser python-click python-habanero python-isbnlib python-prompt_toolkit python-tqdm python-pygments python-stevedore python-doi python-typing_extensions python-lxml python-slugify
install: deps package 
	yay --noconfirm -U papis-latest-1-any.pkg.tar.zst
	yay --noconfirm -U papis-dmenu-latest-1-any.pkg.tar.zst
	yay --noconfirm -U papis-zotero-latest-1-any.pkg.tar.zst

deps: 
	yay --noconfirm --needed -S --asdeps ${DEPENDENCIES}
clean:
	rm -rf *.zst *.zip src pkg

package: 
	makepkg -d

uninstall: 
	yay --noconfirm -Rs papis papis-dmenu papis-zotero

uninstall-deps:
	yay --noconfirm -Rs ${DEPENDENCIES}

.PHONY: install deps clean package
