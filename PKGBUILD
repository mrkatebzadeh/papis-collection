# Maintainer: Siavash Katebzadeh <mr@katebzadeh.xyz>
pkgname=("papis" "papis-dmenu" "papis-zotero")
pkgver=1
packagever=("0.12" "0.3" "0.1.0")
pkgrel=1
pkgdesc="A powerful and flexible command-line document and bibliography manager"
arch=('any')
url="https://github.com/papis"
license=('GPL3')
depends=('python'
	'python-requests'
	'python-filetype'
	'python-pyparsing'
	'python-dmenu'
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
source=(papis-v${packagever[0]}.tar.gz::"${url}/papis/archive/refs/tags/v${packagever[0]}.tar.gz" papis-dmenu-v${packagever[1]}.tar.gz::"${url}/papis-dmenu/archive/refs/tags/v${packagever[1]}.tar.gz" papis-zotero-v${packagever[2]}.tar.gz::"${url}/papis-zotero/archive/refs/tags/v${packagever[2]}.tar.gz")
md5sums=('SKIP' 'SKIP' 'SKIP')

build() {
	for i in ${!pkgname[@]}; do
		cd "$srcdir/${pkgname[i]}-${packagever[i]}"
		python setup.py build
	done
}

package_papis() {
	depends=('python-click' 'python-pyyaml' 'python-pybtex')
	cd "$srcdir/${pkgname[0]}-${packagever[0]}"
	python setup.py install --root="$pkgdir" --optimize=1
}

package_papis-dmenu() {
	depends=('papis')
	cd "$srcdir/${pkgname[1]}-${packagever[1]}"
	python setup.py install --root="$pkgdir" --optimize=1
}

package_papis-zotero() {
	depends=('papis')
	cd "$srcdir/${pkgname[2]}-${packagever[2]}"
	python setup.py install --root="$pkgdir" --optimize=1
}
