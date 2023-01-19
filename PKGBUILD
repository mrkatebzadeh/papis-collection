# Maintainer: Siavash Katebzadeh <mr@katebzadeh.xyz>
pkgname=papis-collection
pkgver=latest
pkgrel=1
pkgdesc="Papis-collection package that includes Papis, Papis-dmenu and Papis-zotero"
arch=('any')
url="https://github.com/papis"
license=('GPL')
depends=('python'
         'python-requests'
         'python-filetype'
         'python-pyparsing'
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
source=("papis-$pkgver.tar.gz"::"https://github.com/papis/papis/archive/master.tar.gz"
        "papis-dmenu-$pkgver.tar.gz"::"https://github.com/papis/papis-dmenu/archive/master.tar.gz"
        "papis-zotero-$pkgver.tar.gz"::"https://github.com/papis/papis-zotero/archive/master.tar.gz")
md5sums=('SKIP' 'SKIP' 'SKIP')

build() {
    cd "papis-$pkgver" || exit
    python3 setup.py build
    cd ".."
    cd "papis-dmenu-$pkgver" || exit
    python3 setup.py build
    cd ".."
    cd "papis-zotero-$pkgver" || exit
    python3 setup.py build
}

package() {
    cd "papis-$pkgver" || exit
    python3 setup.py install --root="$pkgdir" --optimize=1
    cd ".."
    cd "papis-dmenu-$pkgver" || exit
    python3 setup.py install --root="$pkgdir" --optimize=1
    cd ".."
    cd "papis-zotero-$pkgver" || exit
    python3 setup.py install --root="$pkgdir" --optimize=1
}

