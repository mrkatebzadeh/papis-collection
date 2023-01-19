# Maintainer: Siavash Katebzadeh <mr@katebzadeh.xyz>
pkgname=("papis" "papis-dmenu" "papis-zotero")
pkgver="latest"
pkgrel=1
pkgdesc="A powerful and flexible command-line document and bibliography manager"
arch=('any')
url="https://github.com/papis"
license=('GPL3')
depends=('python'
	'python-requests'
	'python-filetype'
	'python-pyparsing'
	# 'python-configparser' This dependency from setup.py is part of the standard library in Python 3.10
	'python-arxiv2bib'
	'python-pyaml'
	'python-chardet'
	'python-beautifulsoup4'
	'python-colorama'
	'python-bibtexparser'
	'python-click'
	'python-habanero'
	'python-isbnlib'
	'python-prompt_toolkit'
	'python-tqdm'
	'python-pygments'
	'python-stevedore'
	'python-doi'
	'python-typing_extensions'
	'python-lxml'
	'python-slugify'
)
source=(papis-master.zip::"${url}/papis/archive/master.zip" papis-dmenu-master.zip::"${url}/papis-dmenu/archive/master.zip" papis-zotero-master.zip::"${url}/papis-zotero/archive/master.zip")
md5sums=('SKIP' 'SKIP' 'SKIP')

build() {
	for i in ${!pkgname[@]}; do
		cd "$srcdir/${pkgname[i]}-master"
		python setup.py build
	done
}

package_papis() {
	depends=('python-click' 'python-pyyaml' 'python-pybtex')
	cd "$srcdir/${pkgname[0]}-master"
	python setup.py install --root="$pkgdir" --optimize=1
}

package_papis-dmenu() {
	depends=('papis')
	cd "$srcdir/${pkgname[1]}-master"
	python setup.py install --root="$pkgdir" --optimize=1
}

package_papis-zotero() {
	depends=('papis')
	cd "$srcdir/${pkgname[2]}-master"
	python setup.py install --root="$pkgdir" --optimize=1
}
