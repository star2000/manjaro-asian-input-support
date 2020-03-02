# Maintainer: Stefano Capitani <stefanoatmanjarodororg>

pkgbase=manjaro-asian-input-support
pkgname=('manjaro-asian-input-support-gtk' 'manjaro-asian-input-support-qt')
pkgver=2020.03
pkgrel=1
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=('gtk-variables' 'qt-variables')
md5sums=('6b7f3d6524febc12dcbe4281fa38f5df'
         'b7a4c308cdd736c1c666d176eab43115')

pkgver() {

	date +%Y.%m
}

package_manjaro-asian-input-support-gtk() {
pkgdesc='Manjaro asian input support for gtk environment'
depends=('ibus')
install=input-support-gtk.install
	
	install -Dm644 $srcdir/gtk-variables $pkgdir/usr/share/manjaro-asian-input-support-gtk/gtk-variables
}

package_manjaro-asian-input-support-qt() {
pkgdesc='Manjaro asian input support for qt environment'
depends=('kcm-fcitx' 'fcitx-qt5' 'fcitx-gtk3' 'fcitx-gtk2')
install=input-support-qt.install

	install -Dm644 $srcdir/qt-variables $pkgdir/usr/share/manjaro-asian-input-support-qt/qt-variables
}

