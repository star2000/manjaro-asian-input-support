# Maintainer: Stefano Capitani <stefanoatmanjarodororg>
# Contributors: star2000 <i@star2000.work>

pkgbase=manjaro-asian-input-support
pkgname=('manjaro-asian-input-support-ibus' 'manjaro-asian-input-support-fcitx')
pkgver=2020.03
pkgrel=1
arch=('any')
url="https://gitlab.manjaro.org/packages/community/manjaro-asian-input-support"
license=('GPL')
source=('gtk-variables' 'fcitx-support.sh')
md5sums=('6b7f3d6524febc12dcbe4281fa38f5df'
         'ef0ec9ada72f834a96f92d8a0996b064')

pkgver() {

	date +%Y.%m
}

package_manjaro-asian-input-support-ibus() {
pkgdesc='Manjaro asian input support for gtk environment'
depends=('ibus')
conflicts=('package_manjaro-asian-input-support-gtk')
replaces=('package_manjaro-asian-input-support-gtk')
install=input-support-gtk.install
	
	install -Dm644 $srcdir/gtk-variables $pkgdir/usr/share/manjaro-asian-input-support-gtk/gtk-variables
}

package_manjaro-asian-input-support-fcitx() {
pkgdesc='Manjaro asian input support for qt environment'
depends=(
	'fcitx-qt5'          # QT input module
	'fcitx-gtk3'         # GTK input module
	'fcitx-configtool'   # gui configuration tool
	'fcitx-googlepinyin' # Chinese input method engine
	'fcitx-cloudpinyin'  # Use internet resources to provide candidate input for Chinese
	'fcitx-mozc'         # Japanese input method engine
	'fcitx-hangul'       # Korean input method engine
	'fcitx-unikey'       # Vietnamese input method engine
	'fcitx-sayura'       # Sinhalese input method engine
	'fcitx-m17n'         # other languages provided by M17n(http://www.nongnu.org/m17n/)
)
optdepends=('kcm-fcitx: KDE configuration module')
conflicts=('package_manjaro-asian-input-support-qt')
replaces=('package_manjaro-asian-input-support-qt')
install=fcitx-support.install

	install -Dm644 "$srcdir/fcitx-support.sh" "$pkgdir/etc/profile.d/fcitx-support.sh"
}

